.class public Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
.super Ljava/lang/Object;
.source "TimeZoneDistroInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller$UninstallResultType;,
        Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller$InstallResultType;
    }
.end annotation


# static fields
.field private static final CURRENT_TZ_DATA_DIR_NAME:Ljava/lang/String; = "current"

.field public static final INSTALL_FAIL_BAD_DISTRO_FORMAT_VERSION:I = 0x2

.field public static final INSTALL_FAIL_BAD_DISTRO_STRUCTURE:I = 0x1

.field public static final INSTALL_FAIL_RULES_TOO_OLD:I = 0x3

.field public static final INSTALL_FAIL_VALIDATION_ERROR:I = 0x4

.field public static final INSTALL_SUCCESS:I = 0x0

.field private static final OLD_TZ_DATA_DIR_NAME:Ljava/lang/String; = "old"

.field private static final STAGED_TZ_DATA_DIR_NAME:Ljava/lang/String; = "staged"

.field public static final UNINSTALL_FAIL:I = 0x2

.field public static final UNINSTALL_NOTHING_INSTALLED:I = 0x1

.field public static final UNINSTALL_SUCCESS:I = 0x0

.field public static final UNINSTALL_TOMBSTONE_FILE_NAME:Ljava/lang/String; = "STAGED_UNINSTALL_TOMBSTONE"

.field private static final WORKING_DIR_NAME:Ljava/lang/String; = "working"


# instance fields
.field private final baseVersionFile:Ljava/io/File;

.field private final currentTzDataDir:Ljava/io/File;

.field private final logTag:Ljava/lang/String;

.field private final oldStagedDataDir:Ljava/io/File;

.field private final stagedTzDataDir:Ljava/io/File;

.field private final workingDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "baseVersionFile"    # Ljava/io/File;
    .param p3, "installDir"    # Ljava/io/File;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->baseVersionFile:Ljava/io/File;

    .line 124
    new-instance v0, Ljava/io/File;

    const-string v1, "old"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    .line 125
    new-instance v0, Ljava/io/File;

    const-string v1, "staged"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/io/File;

    const-string v1, "current"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    .line 127
    new-instance v0, Ljava/io/File;

    const-string v1, "working"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    .line 128
    return-void
.end method

.method private checkDistroDataFilesExist(Ljava/io/File;)Z
    .locals 2
    .param p1, "unpackedContentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Verifying distro contents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v0, "tzdata"

    const-string v1, "icu/icu_tzdata.dat"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/timezone/distro/FileUtils;->filesExist(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkDistroRulesNewerThanBase(Ljava/io/File;Lcom/android/timezone/distro/DistroVersion;)Z
    .locals 8
    .param p1, "baseVersionFile"    # Ljava/io/File;
    .param p2, "distroVersion"    # Lcom/android/timezone/distro/DistroVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Reading base time zone rules version"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0, p1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readBaseVersion(Ljava/io/File;)Llibcore/timezone/TzDataSetVersion;

    move-result-object v0

    .line 424
    .local v0, "baseVersion":Llibcore/timezone/TzDataSetVersion;
    iget-object v1, v0, Llibcore/timezone/TzDataSetVersion;->rulesVersion:Ljava/lang/String;

    .line 425
    .local v1, "baseRulesVersion":Ljava/lang/String;
    iget-object v2, p2, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 427
    .local v2, "distroRulesVersion":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 428
    .local v3, "canApply":Z
    :goto_0
    const-string v4, ", baseRulesVersion="

    if-nez v3, :cond_1

    .line 429
    iget-object v5, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed rules version check: distroRulesVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 432
    :cond_1
    iget-object v5, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Passed rules version check: distroRulesVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_1
    return v3
.end method

.method private deleteBestEffort(Ljava/io/File;)V
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    .line 379
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :try_start_0
    invoke-static {p1}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private readBaseVersion(Ljava/io/File;)Llibcore/timezone/TzDataSetVersion;
    .locals 4
    .param p1, "baseVersionFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    :try_start_0
    invoke-static {p1}, Llibcore/timezone/TzDataSetVersion;->readFromFile(Ljava/io/File;)Llibcore/timezone/TzDataSetVersion;

    move-result-object v0
    :try_end_0
    .catch Llibcore/timezone/TzDataSetVersion$TzDataSetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Llibcore/timezone/TzDataSetVersion$TzDataSetException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 367
    .end local v0    # "e":Llibcore/timezone/TzDataSetVersion$TzDataSetException;
    :cond_0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version file cannot be found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base version file does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;
    .locals 4
    .param p1, "distroDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading distro format version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v0, Ljava/io/File;

    const-string v1, "distro_version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 405
    .local v0, "distroVersionFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    sget v1, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    .line 409
    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->readBytes(Ljava/io/File;I)[B

    move-result-object v1

    .line 410
    .local v1, "versionBytes":[B
    invoke-static {v1}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v2

    return-object v2

    .line 406
    .end local v1    # "versionBytes":[B
    :cond_0
    new-instance v1, Lcom/android/timezone/distro/DistroException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No distro version file found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private unpackDistro(Lcom/android/timezone/distro/TimeZoneDistro;Ljava/io/File;)V
    .locals 3
    .param p1, "distro"    # Lcom/android/timezone/distro/TimeZoneDistro;
    .param p2, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unpacking update content to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p1, p2}, Lcom/android/timezone/distro/TimeZoneDistro;->extractTo(Ljava/io/File;)V

    .line 393
    return-void
.end method


# virtual methods
.method getCurrentTzDataDir()Ljava/io/File;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getInstalledDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    return-object v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v0

    return-object v0
.end method

.method getOldStagedDataDir()Ljava/io/File;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getStagedDistroOperation()Lcom/android/timezone/distro/StagedDistroOperation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x0

    return-object v0

    .line 348
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    const-string v2, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-static {}, Lcom/android/timezone/distro/StagedDistroOperation;->uninstall()Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v0

    return-object v0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v0

    invoke-static {v0}, Lcom/android/timezone/distro/StagedDistroOperation;->install(Lcom/android/timezone/distro/DistroVersion;)Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v0

    return-object v0
.end method

.method getStagedTzDataDir()Ljava/io/File;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method getWorkingDir()Ljava/io/File;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    return-object v0
.end method

.method public readBaseVersion()Llibcore/timezone/TzDataSetVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->baseVersionFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readBaseVersion(Ljava/io/File;)Llibcore/timezone/TzDataSetVersion;

    move-result-object v0

    return-object v0
.end method

.method public stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I
    .locals 11
    .param p1, "distro"    # Lcom/android/timezone/distro/TimeZoneDistro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const-string v0, " failed validation"

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v1}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v1}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v2, "Unpacking / verifying time zone update"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, p1, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->unpackDistro(Lcom/android/timezone/distro/TimeZoneDistro;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v2
    :try_end_1
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    .local v2, "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    nop

    .line 176
    if-nez v2, :cond_2

    .line 177
    :try_start_2
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v3, "Update not applied: Distro version could not be loaded"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    nop

    .line 261
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 178
    return v1

    .line 185
    :cond_2
    :try_start_3
    new-instance v3, Llibcore/timezone/TzDataSetVersion;

    iget v4, v2, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v5, v2, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget-object v6, v2, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v7, v2, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v3, v4, v5, v6, v7}, Llibcore/timezone/TzDataSetVersion;-><init>(IILjava/lang/String;I)V
    :try_end_3
    .catch Llibcore/timezone/TzDataSetVersion$TzDataSetException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    .local v3, "distroTzDataSetVersion":Llibcore/timezone/TzDataSetVersion;
    nop

    .line 192
    :try_start_4
    invoke-static {v3}, Llibcore/timezone/TzDataSetVersion;->isCompatibleWithThisDevice(Llibcore/timezone/TzDataSetVersion;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 193
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update not applied: Distro format version check failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    const/4 v0, 0x2

    .line 261
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 195
    return v0

    .line 198
    :cond_3
    :try_start_5
    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->checkDistroDataFilesExist(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 199
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v4, "Update not applied: Distro is missing required data file(s)"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 200
    nop

    .line 261
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 200
    return v1

    .line 203
    :cond_4
    :try_start_6
    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->baseVersionFile:Ljava/io/File;

    invoke-direct {p0, v4, v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->checkDistroRulesNewerThanBase(Ljava/io/File;Lcom/android/timezone/distro/DistroVersion;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 204
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Update not applied: Distro rules version check failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 205
    const/4 v0, 0x3

    .line 261
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 205
    return v0

    .line 209
    :cond_5
    :try_start_7
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string v6, "tzdata"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    .local v4, "zoneInfoFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Llibcore/timezone/ZoneInfoDB$TzData;->loadTzData(Ljava/lang/String;)Llibcore/timezone/ZoneInfoDB$TzData;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 211
    .local v5, "tzData":Llibcore/timezone/ZoneInfoDB$TzData;
    const/4 v6, 0x4

    const-string v7, "Update not applied: "

    if-nez v5, :cond_6

    .line 212
    :try_start_8
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " could not be loaded"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 213
    nop

    .line 261
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 213
    return v6

    .line 216
    :cond_6
    :try_start_9
    invoke-virtual {v5}, Llibcore/timezone/ZoneInfoDB$TzData;->validate()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 221
    :try_start_a
    invoke-virtual {v5}, Llibcore/timezone/ZoneInfoDB$TzData;->close()V

    .line 222
    nop

    .line 225
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string v10, "tzlookup.xml"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    .local v8, "tzLookupFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7

    .line 227
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 228
    nop

    .line 261
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 228
    return v1

    .line 231
    :cond_7
    nop

    .line 232
    :try_start_b
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/timezone/TimeZoneFinder;->createInstance(Ljava/lang/String;)Llibcore/timezone/TimeZoneFinder;

    move-result-object v1

    .line 233
    .local v1, "timeZoneFinder":Llibcore/timezone/TimeZoneFinder;
    invoke-virtual {v1}, Llibcore/timezone/TimeZoneFinder;->validate()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 237
    .end local v1    # "timeZoneFinder":Llibcore/timezone/TimeZoneFinder;
    nop

    .line 242
    :try_start_c
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Applying time zone update"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    .line 246
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const-string v1, " to "

    const-string v6, "Moving "

    if-nez v0, :cond_8

    .line 247
    :try_start_d
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Nothing to unstage at "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_8
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v7, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0, v7}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 258
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Install staged: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " successfully created"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 259
    const/4 v0, 0x0

    .line 261
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 259
    return v0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/io/IOException;
    :try_start_e
    iget-object v9, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 236
    nop

    .line 261
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 236
    return v6

    .line 221
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "tzLookupFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 217
    :catch_1
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_f
    iget-object v8, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 219
    nop

    .line 221
    :try_start_10
    invoke-virtual {v5}, Llibcore/timezone/ZoneInfoDB$TzData;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 261
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 219
    return v6

    .line 221
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_11
    invoke-virtual {v5}, Llibcore/timezone/ZoneInfoDB$TzData;->close()V

    .end local p0    # "this":Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    .end local p1    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    throw v0

    .line 188
    .end local v3    # "distroTzDataSetVersion":Llibcore/timezone/TzDataSetVersion;
    .end local v4    # "zoneInfoFile":Ljava/io/File;
    .end local v5    # "tzData":Llibcore/timezone/ZoneInfoDB$TzData;
    .restart local p0    # "this":Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    .restart local p1    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    :catch_2
    move-exception v0

    .line 189
    .local v0, "e":Llibcore/timezone/TzDataSetVersion$TzDataSetException;
    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v4, "Update not applied: Distro version could not be converted"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 190
    nop

    .line 261
    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 190
    return v1

    .line 172
    .end local v0    # "e":Llibcore/timezone/TzDataSetVersion$TzDataSetException;
    .end local v2    # "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    :catch_3
    move-exception v0

    .line 173
    .local v0, "e":Lcom/android/timezone/distro/DistroException;
    :try_start_12
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid distro version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/timezone/distro/DistroException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 174
    nop

    .line 261
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 174
    return v1

    .line 261
    .end local v0    # "e":Lcom/android/timezone/distro/DistroException;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 262
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    throw v0
.end method

.method public stageUninstall()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Uninstalling time zone update"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 291
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, " to "

    const-string v2, "Moving "

    if-nez v0, :cond_2

    .line 292
    :try_start_1
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing to unstage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0, v3}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing to uninstall at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    nop

    .line 318
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 319
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 304
    return v3

    .line 308
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0, v3}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 309
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string v4, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/timezone/distro/FileUtils;->createEmptyFile(Ljava/io/File;)V

    .line 312
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 314
    iget-object v0, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uninstall staged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " successfully created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    const/4 v0, 0x0

    .line 318
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 319
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 316
    return v0

    .line 318
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    .line 319
    iget-object v1, p0, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    throw v0
.end method
