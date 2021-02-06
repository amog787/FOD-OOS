.class Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
.super Landroid/os/ShellCommand;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/testharness/TestHarnessModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestHarnessModeShellCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/testharness/TestHarnessModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;Lcom/android/server/testharness/TestHarnessModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/testharness/TestHarnessModeService;
    .param p2, "x1"    # Lcom/android/server/testharness/TestHarnessModeService$1;

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    return-void
.end method

.method private checkPermissions()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENABLE_TEST_HARNESS_MODE"

    const-string v2, "You must hold android.permission.ENABLE_TEST_HARNESS_MODE to enable Test Harness Mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method private getBytesFromFile(Ljava/io/File;)[B
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 359
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 360
    .local v1, "path":Ljava/nio/file/Path;
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 361
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 362
    .local v2, "size":I
    new-array v3, v2, [B

    .line 363
    .local v3, "bytes":[B
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .local v4, "numBytes":I
    if-ne v4, v2, :cond_2

    .line 367
    nop

    .line 368
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 367
    :cond_1
    return-object v3

    .line 365
    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to read the whole file"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "path":Ljava/nio/file/Path;
    .end local p0    # "this":Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    .end local p1    # "file":Ljava/io/File;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .end local v2    # "size":I
    .end local v3    # "bytes":[B
    .end local v4    # "numBytes":I
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "path":Ljava/nio/file/Path;
    .restart local p0    # "this":Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2

    .line 357
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "path":Ljava/nio/file/Path;
    :cond_4
    :goto_1
    new-array v0, v0, [B

    return-object v0
.end method

.method private handleEnable()I
    .locals 11

    .line 323
    const-string v0, "Failed to enable Test Harness Mode"

    const-class v1, Landroid/debug/AdbManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/debug/AdbManagerInternal;

    .line 324
    .local v1, "adbManager":Landroid/debug/AdbManagerInternal;
    invoke-virtual {v1}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v2

    .line 325
    .local v2, "adbKeys":Ljava/io/File;
    invoke-virtual {v1}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v3

    .line 328
    .local v3, "adbTempKeys":Ljava/io/File;
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v5

    .line 329
    .local v5, "adbKeysBytes":[B
    invoke-direct {p0, v3}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v6

    .line 331
    .local v6, "adbTempKeysBytes":[B
    new-instance v7, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    invoke-direct {v7, v5, v6}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>([B[B)V

    .line 332
    .local v7, "persistentData":Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    iget-object v8, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v8}, Lcom/android/server/testharness/TestHarnessModeService;->access$200(Lcom/android/server/testharness/TestHarnessModeService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v8

    .line 333
    .local v8, "blockManager":Lcom/android/server/PersistentDataBlockManagerInternal;
    if-nez v8, :cond_0

    .line 334
    invoke-static {}, Lcom/android/server/testharness/TestHarnessModeService;->access$300()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Failed to enable Test Harness Mode. No implementation of PersistentDataBlockManagerInternal was bound."

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    return v4

    .line 339
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->toBytes()[B

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/server/PersistentDataBlockManagerInternal;->setTestHarnessModeData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v5    # "adbKeysBytes":[B
    .end local v6    # "adbTempKeysBytes":[B
    .end local v7    # "persistentData":Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    .end local v8    # "blockManager":Lcom/android/server/PersistentDataBlockManagerInternal;
    nop

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "i":Landroid/content/Intent;
    const-string v5, "android"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    invoke-static {}, Lcom/android/server/testharness/TestHarnessModeService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.extra.REASON"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v5, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    iget-object v4, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v4}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 352
    const/4 v4, 0x0

    return v4

    .line 340
    .end local v0    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 341
    .local v5, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/testharness/TestHarnessModeService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failed to store ADB keys."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    return v4
.end method

.method private isDeviceSecure()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 319
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    iget-object v1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v1}, Lcom/android/server/testharness/TestHarnessModeService;->access$100(Lcom/android/server/testharness/TestHarnessModeService;)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4d6ada7d

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x416ad28e

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "restore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 292
    :cond_3
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->checkPermissions()V

    .line 293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 295
    .local v0, "originalId":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->isDeviceSecure()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Test Harness Mode cannot be enabled if there is a lock screen"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const/4 v2, 0x2

    .line 303
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    return v2

    .line 301
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->handleEnable()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    return v2

    .line 303
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    throw v2
.end method

.method public onHelp()V
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 374
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "About:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v1, "  Test Harness Mode is a mode that the device can be placed in to prepare"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    const-string v1, "  the device for running UI tests. The device is placed into this mode by"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const-string v1, "  first wiping all data from the device, preserving ADB keys."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 379
    const-string v1, "  By default, the following settings are configured:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    const-string v1, "    * Package Verifier is disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    const-string v1, "    * Stay Awake While Charging is enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    const-string v1, "    * OTA Updates are disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string v1, "    * Auto-Sync for accounts is disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 385
    const-string v1, "  Other apps may configure themselves differently in Test Harness Mode by"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const-string v1, "  checking ActivityManager.isRunningInUserTestHarness()"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 388
    const-string v1, "Test Harness Mode commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 392
    const-string v1, "  enable|restore"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    const-string v1, "    Erase all data from this device and enable Test Harness Mode,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    const-string v1, "    preserving the stored ADB keys currently on the device and toggling"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    const-string v1, "    settings in a way that are conducive to Instrumentation testing."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    return-void
.end method
