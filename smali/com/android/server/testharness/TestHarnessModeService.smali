.class public Lcom/android/server/testharness/TestHarnessModeService;
.super Lcom/android/server/SystemService;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;,
        Lcom/android/server/testharness/TestHarnessModeService$PersistentData;,
        Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEST_HARNESS_MODE_PROPERTY:Ljava/lang/String; = "persist.sys.test_harness"


# instance fields
.field private mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 264
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/testharness/TestHarnessModeService$1;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    iput-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mService:Landroid/os/IBinder;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/testharness/TestHarnessModeService;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/testharness/TestHarnessModeService;

    .line 71
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/testharness/TestHarnessModeService;)Lcom/android/server/PersistentDataBlockManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/testharness/TestHarnessModeService;

    .line 71
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private completeTestHarnessModeSetup()V
    .locals 4

    .line 126
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Completing Test Harness Mode setup."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getTestHarnessModeData()[B

    move-result-object v0

    .line 128
    .local v0, "testHarnessModeData":[B
    if-nez v0, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->fromBytes([B)Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/testharness/TestHarnessModeService;->setUpAdbFiles(Lcom/android/server/testharness/TestHarnessModeService$PersistentData;)V

    .line 133
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureSettings()V

    .line 134
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureUser()V
    :try_end_0
    .catch Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    nop

    :goto_0
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/PersistentDataBlockManagerInternal;->clearTestHarnessModeData()V

    .line 143
    goto :goto_1

    .line 142
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;
    :try_start_1
    sget-object v2, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to set up Test Harness Mode. Bad data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    nop

    .end local v1    # "e":Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;
    goto :goto_0

    .line 144
    :goto_1
    return-void

    .line 142
    :goto_2
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/PersistentDataBlockManagerInternal;->clearTestHarnessModeData()V

    throw v1
.end method

.method private configureSettings()V
    .locals 4

    .line 162
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "adb_allowed_connection_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 166
    const/4 v1, 0x1

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    const-string/jumbo v2, "package_verifier_enable"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    const-string/jumbo v2, "stay_on_while_plugged_in"

    const/4 v3, 0x7

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    const-string/jumbo v2, "ota_disable_automatic_update"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    return-void
.end method

.method private configureUser()V
    .locals 4

    .line 184
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 186
    .local v0, "primaryUser":Landroid/content/pm/UserInfo;
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/location/LocationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 189
    .local v1, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 190
    return-void
.end method

.method private disableLockScreen()V
    .locals 4

    .line 120
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 121
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, "utils":Lcom/android/internal/widget/LockPatternUtils;
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 123
    return-void
.end method

.method private getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    if-nez v0, :cond_0

    .line 257
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Getting PersistentDataBlockManagerInternal from LocalServices"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 259
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iput-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object v0
.end method

.method private getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 194
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private getTestHarnessModeData()[B
    .locals 4

    .line 147
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    .line 148
    .local v0, "blockManager":Lcom/android/server/PersistentDataBlockManagerInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 149
    sget-object v2, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start Test Harness Mode; no implementation of PersistentDataBlockManagerInternal was bound!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-object v1

    .line 153
    :cond_0
    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getTestHarnessModeData()[B

    move-result-object v2

    .line 154
    .local v2, "testHarnessModeData":[B
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    return-object v2

    .line 156
    :cond_2
    :goto_0
    return-object v1
.end method

.method private setDeviceProvisioned()V
    .locals 4

    .line 215
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 222
    return-void
.end method

.method private setUpAdbFiles(Lcom/android/server/testharness/TestHarnessModeService$PersistentData;)V
    .locals 3
    .param p1, "persistentData"    # Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    .line 177
    const-class v0, Landroid/debug/AdbManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/AdbManagerInternal;

    .line 179
    .local v0, "adbManager":Landroid/debug/AdbManagerInternal;
    iget-object v1, p1, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/testharness/TestHarnessModeService;->writeBytesToFile([BLjava/nio/file/Path;)V

    .line 180
    iget-object v1, p1, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/testharness/TestHarnessModeService;->writeBytesToFile([BLjava/nio/file/Path;)V

    .line 181
    return-void
.end method

.method private setUpTestHarnessMode()V
    .locals 3

    .line 107
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Setting up test harness mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getTestHarnessModeData()[B

    move-result-object v0

    .line 109
    .local v0, "testHarnessModeData":[B
    if-nez v0, :cond_0

    .line 110
    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->setDeviceProvisioned()V

    .line 115
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->disableLockScreen()V

    .line 116
    const-string/jumbo v1, "persist.sys.test_harness"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private showNotificationIfEnabled()V
    .locals 7

    .line 225
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.test_harness"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10406f8

    .line 229
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10406f7

    .line 231
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Landroid/app/Notification$Builder;

    .line 234
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x10807ef

    .line 235
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 236
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 237
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 238
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 239
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x106001c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 248
    .local v0, "notification":Landroid/app/Notification;
    nop

    .line 249
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 250
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    const/4 v4, 0x0

    const/16 v5, 0x36

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 252
    return-void
.end method

.method private writeBytesToFile([BLjava/nio/file/Path;)V
    .locals 3
    .param p1, "keys"    # [B
    .param p2, "adbKeys"    # Ljava/nio/file/Path;

    .line 199
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    .line 200
    .local v1, "fileOutputStream":Ljava/io/OutputStream;
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 201
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 203
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v0

    .line 204
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {p2, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    nop

    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v1    # "fileOutputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set up adb keys"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 88
    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->completeTestHarnessModeSetup()V

    .line 94
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->showNotificationIfEnabled()V

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->setUpTestHarnessMode()V

    .line 91
    nop

    .line 97
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 98
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "testharness"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/testharness/TestHarnessModeService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 84
    return-void
.end method
