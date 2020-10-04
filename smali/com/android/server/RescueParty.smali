.class public Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RescueParty$AppThreshold;,
        Lcom/android/server/RescueParty$BootThreshold;,
        Lcom/android/server/RescueParty$Threshold;
    }
.end annotation


# static fields
.field static final BOOT_TRIGGER_WINDOW_MILLIS:J = 0x927c0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LEVEL_FACTORY_RESET:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LEVEL_NONE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PERSISTENT_APP_CRASH_TRIGGER_WINDOW_MILLIS:J = 0x7530L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PROP_DISABLE_RESCUE:Ljava/lang/String; = "persist.sys.disable_rescue"

.field static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PROP_RESCUE_BOOT_START:Ljava/lang/String; = "sys.rescue_boot_start"

.field static final PROP_RESCUE_LEVEL:Ljava/lang/String; = "sys.rescue_level"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PROP_VIRTUAL_DEVICE:Ljava/lang/String; = "ro.hardware.virtual_device"

.field static final TAG:Ljava/lang/String; = "RescueParty"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TRIGGER_COUNT:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static sApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/RescueParty$Threshold;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBoot:Lcom/android/server/RescueParty$Threshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/android/server/RescueParty$BootThreshold;

    invoke-direct {v0}, Lcom/android/server/RescueParty$BootThreshold;-><init>()V

    sput-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndWaitForToFinishDumpService()Z
    .locals 8

    .line 234
    const/16 v0, 0x1e

    .line 235
    .local v0, "timewait":I
    const-string v1, "init.svc.dump_crash_log"

    .line 236
    .local v1, "INIT_SERVICE_DUMP_CRASH":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "retry":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 237
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "crashLogService":Ljava/lang/String;
    const-string/jumbo v4, "running"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 239
    .local v4, "busy":Z
    if-nez v4, :cond_0

    .line 240
    const/4 v5, 0x1

    return v5

    .line 243
    :cond_0
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_1

    .line 244
    :catch_0
    move-exception v5

    .line 245
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "RescueParty"

    const-string v7, "Interrupted:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v3    # "crashLogService":Ljava/lang/String;
    .end local v4    # "busy":Z
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "retry":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static executeRescueLevel(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 210
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 211
    .local v0, "level":I
    if-nez v0, :cond_0

    return-void

    .line 213
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

    .line 215
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;I)V

    .line 216
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeRescueSuccess(I)V

    .line 217
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished rescue level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    goto :goto_0

    .line 219
    :catchall_0
    move-exception v1

    .line 220
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "msg":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/EventLogTags;->writeRescueFailure(ILjava/lang/String;)V

    .line 222
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed rescue level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 225
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "msg":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private static executeRescueLevelInternal(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    const/16 v0, 0x7a

    invoke-static {v0, p1}, Landroid/util/StatsLog;->write(II)I

    .line 254
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x107

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const-string v1, "RescueParty"

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "ctl.start"

    const-string v2, "dump_crash_log"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/android/server/RescueParty;->checkAndWaitForToFinishDumpService()Z

    move-result v0

    .line 270
    .local v0, "available":Z
    if-nez v0, :cond_1

    .line 271
    const-string v2, "dump_crash_log service is not finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 276
    .end local v0    # "available":Z
    :cond_1
    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    .line 263
    goto :goto_0

    .line 259
    :cond_3
    invoke-static {p0, v2}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    .line 260
    goto :goto_0

    .line 256
    :cond_4
    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    .line 257
    nop

    .line 279
    :goto_0
    const-string/jumbo v0, "no_package"

    invoke-static {v0}, Lcom/android/server/utils/FlagNamespaceUtils;->addToKnownResetNamespaces(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private static getAllUserIds()[I
    .locals 7

    .line 411
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 413
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

    .line 415
    .local v4, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 416
    .local v5, "userId":I
    if-eqz v5, :cond_0

    .line 417
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 420
    .end local v5    # "userId":I
    :cond_0
    goto :goto_1

    .line 419
    :catch_0
    move-exception v5

    .line 413
    .end local v4    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_1
    goto :goto_2

    .line 422
    :catchall_0
    move-exception v1

    .line 423
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "RescueParty"

    const-string v3, "Trouble discovering users"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method static getElapsedRealtime()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static handleNativeRescuePartyResets()V
    .locals 2

    .line 188
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x4

    .line 190
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetNativeCategories()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lcom/android/server/utils/FlagNamespaceUtils;->resetDeviceConfig(ILjava/util/List;)V

    .line 192
    :cond_0
    return-void
.end method

.method private static incrementRescueLevel(I)V
    .locals 4
    .param p0, "triggerUid"    # I

    .line 199
    nop

    .line 200
    const/4 v0, 0x0

    const-string/jumbo v1, "sys.rescue_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 199
    const/4 v3, 0x4

    invoke-static {v2, v0, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 202
    .local v0, "level":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {v0, p0}, Lcom/android/server/EventLogTags;->writeRescueLevel(II)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incremented rescue level to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " triggered by UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 207
    return-void
.end method

.method public static isAttemptingFactoryReset()Z
    .locals 3

    .line 160
    const/4 v0, 0x0

    const-string/jumbo v1, "sys.rescue_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isDisabled()Z
    .locals 4

    .line 98
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.enable_rescue"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    return v0

    .line 103
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    const/4 v2, 0x1

    const-string v3, "RescueParty"

    if-eqz v1, :cond_1

    .line 104
    const-string v0, "Disabled because of eng build"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v2

    .line 111
    :cond_1
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/RescueParty;->isUsbActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const-string v0, "Disabled because of active USB connection"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v2

    .line 117
    :cond_2
    const-string/jumbo v1, "persist.sys.disable_rescue"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    const-string v0, "Disabled because of manual property"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v2

    .line 122
    :cond_3
    return v0
.end method

.method private static isUsbActive()Z
    .locals 5

    .line 433
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.hardware.virtual_device"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "RescueParty"

    if-eqz v1, :cond_0

    .line 434
    const-string v0, "Assuming virtual device is connected over USB"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x1

    return v0

    .line 438
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v4, ""

    .line 439
    invoke-static {v1, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "state":Ljava/lang/String;
    const-string v3, "CONFIGURED"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 441
    .end local v1    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 442
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, "Failed to determine if device was on USB"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    return v0
.end method

.method private static levelToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # I

    .line 448
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 454
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 453
    :cond_0
    const-string v0, "FACTORY_RESET"

    return-object v0

    .line 452
    :cond_1
    const-string v0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object v0

    .line 451
    :cond_2
    const-string v0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object v0

    .line 450
    :cond_3
    const-string v0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object v0

    .line 449
    :cond_4
    const-string v0, "NONE"

    return-object v0
.end method

.method public static noteAppCrash(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 143
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    sget-object v0, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/RescueParty$Threshold;

    .line 145
    .local v0, "t":Lcom/android/server/RescueParty$Threshold;
    if-nez v0, :cond_1

    .line 146
    new-instance v1, Lcom/android/server/RescueParty$AppThreshold;

    invoke-direct {v1, p1}, Lcom/android/server/RescueParty$AppThreshold;-><init>(I)V

    move-object v0, v1

    .line 147
    sget-object v1, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->incrementAndTest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 151
    invoke-static {v0}, Lcom/android/server/RescueParty$Threshold;->access$000(Lcom/android/server/RescueParty$Threshold;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    .line 152
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 154
    :cond_2
    return-void
.end method

.method public static noteBoot(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 130
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->incrementAndTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 133
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-static {v0}, Lcom/android/server/RescueParty$Threshold;->access$000(Lcom/android/server/RescueParty$Threshold;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    .line 134
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 136
    :cond_1
    return-void
.end method

.method public static onSettingsProviderPublished(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 168
    invoke-static {}, Lcom/android/server/RescueParty;->handleNativeRescuePartyResets()V

    .line 169
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method private static resetAllSettings(Landroid/content/Context;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "res":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 289
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/utils/FlagNamespaceUtils;->resetDeviceConfig(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to reset config settings"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 294
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v1, v3, p1, v2}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    goto :goto_1

    .line 295
    :catch_1
    move-exception v4

    .line 296
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to reset global settings"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 298
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_0

    aget v6, v4, v2

    .line 300
    .local v6, "userId":I
    :try_start_2
    invoke-static {v1, v3, p1, v6}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 303
    goto :goto_3

    .line 301
    :catch_2
    move-exception v7

    .line 302
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

    .line 298
    .end local v6    # "userId":I
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 305
    :cond_0
    if-nez v0, :cond_1

    .line 308
    return-void

    .line 306
    :cond_1
    throw v0
.end method

.method static resetAllThresholds()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 174
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 177
    sget-object v1, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/RescueParty$Threshold;

    .line 178
    .local v1, "appThreshold":Lcom/android/server/RescueParty$Threshold;
    invoke-virtual {v1}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 176
    .end local v1    # "appThreshold":Lcom/android/server/RescueParty$Threshold;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
