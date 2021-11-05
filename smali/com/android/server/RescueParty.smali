.class public Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RescueParty$RescuePartyObserver;
    }
.end annotation


# static fields
.field static final DEFAULT_OBSERVING_DURATION_MS:J

.field static final LEVEL_FACTORY_RESET:I = 0x4

.field static final LEVEL_NONE:I = 0x0

.field static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1

.field private static final NAME:Ljava/lang/String; = "rescue-party-observer"

.field private static final PERSISTENT_MASK:I = 0x9

.field private static final PROP_DEVICE_CONFIG_DISABLE_FLAG:Ljava/lang/String; = "persist.device_config.configuration.disable_rescue_party"

.field private static final PROP_DISABLE_RESCUE:Ljava/lang/String; = "persist.sys.disable_rescue"

.field static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"

.field static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"

.field static final PROP_RESCUE_LEVEL:Ljava/lang/String; = "sys.rescue_level"

.field private static final PROP_VIRTUAL_DEVICE:Ljava/lang/String; = "ro.hardware.virtual_device"

.field static final TAG:Ljava/lang/String; = "RescueParty"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(ILjava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 74
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 74
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 74
    invoke-static {}, Lcom/android/server/RescueParty;->getNextRescueLevel()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 74
    invoke-static {p0}, Lcom/android/server/RescueParty;->mapRescueLevelToUserImpact(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(I)V
    .locals 0
    .param p0, "x0"    # I

    .line 74
    invoke-static {p0}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static checkAndWaitForToFinishDumpService()Z
    .locals 8

    .line 267
    const/16 v0, 0x1e

    .line 268
    .local v0, "timewait":I
    const-string v1, "init.svc.rbr_rescue_party"

    .line 269
    .local v1, "INIT_SERVICE_DUMP_CRASH":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "retry":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 270
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "crashLogService":Ljava/lang/String;
    const-string/jumbo v4, "running"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 272
    .local v4, "busy":Z
    if-nez v4, :cond_0

    .line 273
    const/4 v5, 0x1

    return v5

    .line 276
    :cond_0
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_1

    .line 277
    :catch_0
    move-exception v5

    .line 278
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "RescueParty"

    const-string v7, "Interrupted:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v3    # "crashLogService":Ljava/lang/String;
    .end local v4    # "busy":Z
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "retry":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static executeRescueLevel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "failedPackage"    # Ljava/lang/String;

    .line 246
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 247
    .local v0, "level":I
    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting rescue level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RescueParty"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_0
    invoke-static {p0, v0, p1}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;ILjava/lang/String;)V

    .line 252
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeRescueSuccess(I)V

    .line 253
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished rescue level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    goto :goto_0

    .line 255
    :catchall_0
    move-exception v1

    .line 256
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/Throwable;)V

    .line 258
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static executeRescueLevelInternal(Landroid/content/Context;ILjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I
    .param p2, "failedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    const/16 v0, 0x7a

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 289
    const-string/jumbo v0, "vendor.oem.rbr.last_dump_level"

    .line 290
    .local v0, "RBR_LAST_DUMP_LEVEL":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 291
    .local v2, "rbrLastDumpLevel":I
    const-string/jumbo v3, "sys.rescue_level"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 292
    .local v3, "sysRescueLevel":I
    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    if-ne v3, v4, :cond_1

    :cond_0
    move v1, v5

    .line 294
    .local v1, "isDesiredLevel":Z
    :cond_1
    if-eqz v1, :cond_2

    if-le v3, v2, :cond_2

    .line 295
    const-string v6, "ctl.start"

    const-string/jumbo v7, "rbr_rescue_party"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/android/server/RescueParty;->checkAndWaitForToFinishDumpService()Z

    move-result v6

    .line 298
    .local v6, "available":Z
    if-nez v6, :cond_2

    .line 299
    const-string v7, "RescueParty"

    const-string v8, "dump_crash_log service is not finished."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v6    # "available":Z
    :cond_2
    const/4 v6, 0x2

    if-eq p1, v5, :cond_6

    const/4 v5, 0x3

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    goto :goto_0

    .line 316
    :cond_3
    new-instance v4, Lcom/android/server/RescueParty$1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/RescueParty$1;-><init>(Landroid/content/Context;I)V

    .line 326
    .local v4, "runnable":Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 327
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 311
    .end local v4    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "thread":Ljava/lang/Thread;
    :cond_4
    invoke-static {p0, v4, p2}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 312
    goto :goto_0

    .line 308
    :cond_5
    invoke-static {p0, v5, p2}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 309
    goto :goto_0

    .line 305
    :cond_6
    invoke-static {p0, v6, p2}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 306
    nop

    .line 330
    :goto_0
    return-void
.end method

.method private static getAllUserIds()[I
    .locals 7

    .line 559
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 561
    .local v0, "userIds":[I
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    .local v4, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 564
    .local v5, "userId":I
    if-eqz v5, :cond_0

    .line 565
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 568
    .end local v5    # "userId":I
    :cond_0
    goto :goto_1

    .line 567
    :catch_0
    move-exception v5

    .line 561
    .end local v4    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_1
    goto :goto_2

    .line 570
    :catchall_0
    move-exception v1

    .line 571
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "RescueParty"

    const-string v3, "Trouble discovering users"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method static getElapsedRealtime()J
    .locals 2

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getNextRescueLevel()I
    .locals 3

    .line 228
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static getPackageUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 354
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 355
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private static handleMonitorCallback(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 175
    const-string/jumbo v0, "monitor_callback_type"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "callbackType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x2ccdde53

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x45856cc0    # 4269.5938f

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "access_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "namespace_updated_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string/jumbo v2, "namespace"

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    .line 193
    const-string v1, "RescueParty"

    const-string v2, "Unrecognized DeviceConfig callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 184
    :cond_3
    const-string v1, "calling_package"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "callingPackage":Ljava/lang/String;
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "namespace":Ljava/lang/String;
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 187
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$000(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 178
    .end local v1    # "callingPackage":Ljava/lang/String;
    .end local v2    # "namespace":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "updatedNamespace":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 180
    invoke-static {p0, v1}, Lcom/android/server/RescueParty;->startObservingPackages(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    .end local v1    # "updatedNamespace":Ljava/lang/String;
    :cond_5
    :goto_2
    return-void
.end method

.method private static handleNativeRescuePartyResets()V
    .locals 4

    .line 215
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetNativeCategories()[Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "resetNativeCategories":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 218
    const/4 v2, 0x4

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "resetNativeCategories":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static incrementRescueLevel(I)V
    .locals 3
    .param p0, "triggerUid"    # I

    .line 237
    invoke-static {}, Lcom/android/server/RescueParty;->getNextRescueLevel()I

    move-result v0

    .line 238
    .local v0, "level":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sys.rescue_level"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {v0, p0}, Lcom/android/server/EventLogTags;->writeRescueLevel(II)V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incremented rescue level to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " triggered by UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 243
    return-void
.end method

.method public static isAttemptingFactoryReset()Z
    .locals 3

    .line 153
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isDisabled()Z
    .locals 4

    .line 115
    const-string/jumbo v0, "persist.sys.enable_rescue"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    return v1

    .line 121
    :cond_0
    const-string/jumbo v0, "persist.device_config.configuration.disable_rescue_party"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "RescueParty"

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "Disabled because of DeviceConfig flag"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v2

    .line 127
    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_2

    .line 128
    const-string v0, "Disabled because of eng build"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v2

    .line 135
    :cond_2
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/RescueParty;->isUsbActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    const-string v0, "Disabled because of active USB connection"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v2

    .line 141
    :cond_3
    const-string/jumbo v0, "persist.sys.disable_rescue"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    const-string v0, "Disabled because of manual property"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v2

    .line 146
    :cond_4
    return v1
.end method

.method private static isUsbActive()Z
    .locals 5

    .line 581
    const-string/jumbo v0, "ro.hardware.virtual_device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "RescueParty"

    if-eqz v0, :cond_0

    .line 582
    const-string v0, "Assuming virtual device is connected over USB"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v0, 0x1

    return v0

    .line 586
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v4, ""

    .line 587
    invoke-static {v0, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "state":Ljava/lang/String;
    const-string v3, "CONFIGURED"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 589
    .end local v0    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 590
    .local v0, "t":Ljava/lang/Throwable;
    const-string v3, "Failed to determine if device was on USB"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    return v1
.end method

.method static synthetic lambda$onSettingsProviderPublished$0(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 165
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->handleMonitorCallback(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 166
    return-void
.end method

.method private static levelToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # I

    .line 596
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 602
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 601
    :cond_0
    const-string v0, "FACTORY_RESET"

    return-object v0

    .line 600
    :cond_1
    const-string v0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object v0

    .line 599
    :cond_2
    const-string v0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object v0

    .line 598
    :cond_3
    const-string v0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object v0

    .line 597
    :cond_4
    const-string v0, "NONE"

    return-object v0
.end method

.method private static logRescueException(ILjava/lang/Throwable;)V
    .locals 3
    .param p0, "level"    # I
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 333
    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/server/EventLogTags;->writeRescueFailure(ILjava/lang/String;)V

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed rescue level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-static {p0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 337
    return-void
.end method

.method private static mapRescueLevelToUserImpact(I)I
    .locals 2
    .param p0, "rescueLevel"    # I

    .line 340
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 348
    const/4 v0, 0x0

    return v0

    .line 346
    :cond_0
    const/4 v0, 0x5

    return v0

    .line 343
    :cond_1
    return v0
.end method

.method public static onSettingsProviderPublished(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 161
    invoke-static {}, Lcom/android/server/RescueParty;->handleNativeRescuePartyResets()V

    .line 162
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/-$$Lambda$RescueParty$M16YDzk6heHIMmIiCwHVSe9Y_o8;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$RescueParty$M16YDzk6heHIMmIiCwHVSe9Y_o8;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-static {v0, v1}, Landroid/provider/Settings$Config;->registerMonitorCallback(Landroid/content/ContentResolver;Landroid/os/RemoteCallback;)V

    .line 167
    return-void
.end method

.method private static performScopedReset(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resetMode"    # I
    .param p2, "failedPackage"    # Ljava/lang/String;

    .line 407
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    .line 408
    .local v0, "rescuePartyObserver":Lcom/android/server/RescueParty$RescuePartyObserver;
    invoke-static {v0, p2}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$300(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 410
    .local v1, "affectedNamespaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 411
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    goto :goto_1

    .line 413
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing scoped reset for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", affected namespaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    const-string v3, "RescueParty"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 418
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    goto :goto_0

    .line 422
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public static registerHealthObserver(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    .line 110
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 111
    return-void
.end method

.method private static resetAllSettings(Landroid/content/Context;ILjava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "failedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "res":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 368
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 369
    :catch_0
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to reset config settings"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 373
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v1, v3, p1, v2}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    goto :goto_1

    .line 374
    :catch_1
    move-exception v4

    .line 375
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to reset global settings"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 377
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_0

    aget v6, v4, v2

    .line 379
    .local v6, "userId":I
    :try_start_2
    invoke-static {v1, v3, p1, v6}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 382
    goto :goto_3

    .line 380
    :catch_2
    move-exception v7

    .line 381
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to reset secure settings for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 377
    .end local v6    # "userId":I
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 384
    :cond_0
    if-nez v0, :cond_1

    .line 387
    return-void

    .line 385
    :cond_1
    throw v0
.end method

.method private static resetDeviceConfig(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resetMode"    # I
    .param p2, "failedPackage"    # Ljava/lang/String;

    .line 391
    invoke-static {}, Lcom/android/server/RescueParty;->shouldPerformScopedResets()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->performScopedReset(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 392
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 396
    :goto_1
    return-void
.end method

.method private static shouldPerformScopedResets()Z
    .locals 3

    .line 399
    nop

    .line 400
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 399
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 402
    .local v0, "rescueLevel":I
    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static startObservingPackages(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updatedNamespace"    # Ljava/lang/String;

    .line 199
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    .line 200
    .local v0, "rescuePartyObserver":Lcom/android/server/RescueParty$RescuePartyObserver;
    invoke-static {v0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->access$100(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 201
    .local v1, "callingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v2, "callingPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting to observe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", updated namespace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RescueParty"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v3

    sget-wide v4, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    .line 212
    return-void
.end method
