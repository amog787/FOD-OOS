.class public final Lcom/android/server/job/JobSchedulerShellCommand;
.super Landroid/os/ShellCommand;
.source "JobSchedulerShellCommand.java"


# static fields
.field public static final CMD_ERR_CONSTRAINTS:I = -0x3ea

.field public static final CMD_ERR_NO_JOB:I = -0x3e9

.field public static final CMD_ERR_NO_PACKAGE:I = -0x3e8


# instance fields
.field mInternal:Lcom/android/server/job/JobSchedulerService;

.field mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 37
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 39
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    .line 40
    return-void
.end method

.method private cancelJob(Ljava/io/PrintWriter;)I
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    const-string v0, "cancel jobs"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    .line 220
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .local v7, "opt":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_4

    .line 221
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v5, 0x5e8

    if-eq v1, v5, :cond_2

    const v2, 0x4f7b216b

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v1, "--user"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_2

    :cond_2
    const-string v1, "-u"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :goto_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_3

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown option \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    return v4

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 225
    nop

    .line 229
    goto :goto_0

    .line 233
    :cond_4
    if-gez v0, :cond_5

    .line 234
    const-string v1, "Error: must specify a concrete user ID"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    return v4

    .line 238
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "jobIdStr":Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto :goto_3

    :cond_6
    move v6, v4

    .line 242
    .local v6, "jobId":I
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 244
    .local v10, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    if-eqz v9, :cond_7

    move v5, v3

    goto :goto_4

    :cond_7
    move v5, v2

    :goto_4
    move-object v2, p1

    move-object v3, v8

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    return v1

    .line 246
    :catchall_0
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 5
    .param p1, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 82
    .local v0, "uid":I
    if-nez v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, "perm":I
    if-nez v1, :cond_1

    .line 92
    return-void

    .line 89
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not permitted to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doHeartbeat(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    const-string/jumbo v0, "manipulate scheduler heartbeat"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 346
    .local v1, "numBeats":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 348
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/job/JobSchedulerService;->executeHeartbeatCommand(Ljava/io/PrintWriter;I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    return v4

    .line 350
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private getBatteryCharging(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 280
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getBatteryCharging()Z

    move-result v0

    .line 281
    .local v0, "val":Z
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 282
    const/4 v1, 0x0

    return v1
.end method

.method private getBatteryNotLow(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 286
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getBatteryNotLow()Z

    move-result v0

    .line 287
    .local v0, "val":Z
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 288
    const/4 v1, 0x0

    return v1
.end method

.method private getBatterySeq(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 274
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getBatterySeq()I

    move-result v0

    .line 275
    .local v0, "seq":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 276
    const/4 v1, 0x0

    return v1
.end method

.method private getJobState(Ljava/io/PrintWriter;)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    const-string v0, "force timeout jobs"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    .line 309
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 310
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v3, 0x5e8

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v1, v3, :cond_2

    const v3, 0x4f7b216b

    if-eq v1, v3, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_2

    :cond_2
    const-string v1, "-u"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    move v1, v5

    :goto_2
    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_3

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown option \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    return v5

    .line 313
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 314
    nop

    .line 318
    goto :goto_0

    .line 322
    :cond_4
    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    .line 323
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 326
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "jobIdStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 330
    .local v4, "jobId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 332
    .local v5, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v7, p1, v1, v0, v4}, Lcom/android/server/job/JobSchedulerService;->getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I

    move-result v7

    .line 333
    .local v7, "ret":I
    invoke-direct {p0, v7, v1, v0, v4}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    nop

    .line 336
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    return v7

    .line 336
    .end local v7    # "ret":I
    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private getStorageNotLow(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 298
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getStorageNotLow()Z

    move-result v0

    .line 299
    .local v0, "val":Z
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 300
    const/4 v1, 0x0

    return v1
.end method

.method private getStorageSeq(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 292
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getStorageSeq()I

    move-result v0

    .line 293
    .local v0, "seq":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 294
    const/4 v1, 0x0

    return v1
.end method

.method private monitorBattery(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    const-string v0, "change battery monitoring"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "opt":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const/4 v1, 0x1

    .local v1, "enabled":Z
    goto :goto_0

    .line 256
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    const/4 v1, 0x0

    .line 262
    .restart local v1    # "enabled":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 264
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v1}, Lcom/android/server/job/JobSchedulerService;->setMonitorBattery(Z)V

    .line 265
    if-eqz v1, :cond_1

    const-string v4, "Battery monitoring enabled"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :cond_1
    const-string v4, "Battery monitoring disabled"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    nop

    .line 270
    const/4 v4, 0x0

    return v4

    .line 268
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 259
    .end local v1    # "enabled":Z
    .end local v2    # "ident":J
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    const/4 v1, 0x1

    return v1
.end method

.method private printError(ILjava/lang/String;II)Z
    .locals 5
    .param p1, "errCode"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "jobId"    # I

    .line 96
    const-string v0, " in package "

    const/4 v1, 0x1

    const-string v2, " / user "

    packed-switch p1, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    return v0

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 99
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v3, "Package not found: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 103
    return v1

    .line 106
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 107
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v4, "Could not find job "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 109
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 113
    return v1

    .line 116
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 117
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    const-string v4, "Job "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 119
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 123
    const-string v0, " has functional constraints but --force not specified"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    return v1

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runJob(Ljava/io/PrintWriter;)I
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    const-string v0, "force scheduled jobs"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "force":Z
    const/4 v1, 0x0

    .line 138
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 139
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, -0x60ebf6b5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eq v2, v4, :cond_4

    const/16 v4, 0x5d9

    if-eq v2, v4, :cond_3

    const/16 v4, 0x5e8

    if-eq v2, v4, :cond_2

    const v4, 0x4f7b216b

    if-eq v2, v4, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_2

    :cond_2
    const-string v2, "-u"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_2

    :cond_3
    const-string v2, "-f"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const-string v2, "--force"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    goto :goto_2

    :goto_1
    move v2, v8

    :goto_2
    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_5

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown option \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    return v8

    .line 147
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 148
    goto :goto_3

    .line 142
    :cond_6
    const/4 v0, 0x1

    .line 143
    nop

    .line 152
    :goto_3
    goto :goto_0

    .line 156
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 159
    .local v4, "jobId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 161
    .local v5, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v7, v2, v1, v4, v0}, Lcom/android/server/job/JobSchedulerService;->executeRunCommand(Ljava/lang/String;IIZ)I

    move-result v7

    .line 162
    .local v7, "ret":I
    invoke-direct {p0, v7, v2, v1, v4}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;II)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_8

    .line 163
    nop

    .line 175
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    return v7

    .line 167
    :cond_8
    :try_start_1
    const-string v8, "Running job"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    if-eqz v0, :cond_9

    .line 169
    const-string v8, " [FORCED]"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    nop

    .line 175
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    return v7

    .line 175
    .end local v7    # "ret":I
    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private timeout(Ljava/io/PrintWriter;)I
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    move-object/from16 v1, p0

    const-string v0, "force timeout jobs"

    invoke-direct {v1, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 182
    const/4 v0, -0x1

    .line 185
    .local v0, "userId":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v2, :cond_4

    .line 186
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v7, 0x5e8

    if-eq v2, v7, :cond_2

    const v4, 0x4f7b216b

    if-eq v2, v4, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v4, v5

    goto :goto_2

    :cond_2
    const-string v2, "-u"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :goto_1
    move v4, v6

    :goto_2
    if-eqz v4, :cond_3

    if-eq v4, v5, :cond_3

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown option \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v13, p1

    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    return v6

    .line 186
    :cond_3
    move-object/from16 v13, p1

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 190
    nop

    .line 194
    goto :goto_0

    .line 198
    :cond_4
    move-object/from16 v13, p1

    const/4 v2, -0x2

    if-ne v0, v2, :cond_5

    .line 199
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    move v2, v0

    goto :goto_3

    .line 198
    :cond_5
    move v2, v0

    .line 202
    .end local v0    # "userId":I
    .local v2, "userId":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v14

    .line 203
    .local v14, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v15

    .line 204
    .local v15, "jobIdStr":Ljava/lang/String;
    if-eqz v15, :cond_6

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_6
    move v12, v6

    .line 206
    .local v12, "jobId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 208
    .local v16, "ident":J
    :try_start_0
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    if-eqz v15, :cond_7

    move v11, v5

    goto :goto_4

    :cond_7
    move v11, v4

    :goto_4
    move-object/from16 v8, p1

    move-object v9, v14

    move v10, v2

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/job/JobSchedulerService;->executeTimeoutCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    return v0

    .line 210
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private triggerDockState(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    const-string/jumbo v0, "trigger wireless charging dock state"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "opt":Ljava/lang/String;
    const-string v1, "idle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    const/4 v1, 0x1

    .local v1, "idleState":Z
    goto :goto_0

    .line 361
    .end local v1    # "idleState":Z
    :cond_0
    const-string v1, "active"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    const/4 v1, 0x0

    .line 368
    .restart local v1    # "idleState":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 370
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v1}, Lcom/android/server/job/JobSchedulerService;->triggerDockState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 373
    nop

    .line 374
    const/4 v4, 0x0

    return v4

    .line 372
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 364
    .end local v1    # "idleState":Z
    .end local v2    # "ident":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 46
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v3, "monitor-battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "get-job-state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "get-battery-not-low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_3
    const-string v3, "get-battery-seq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_4
    const-string v3, "heartbeat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto :goto_2

    :sswitch_5
    const-string v3, "get-storage-not-low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_6
    const-string/jumbo v3, "run"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_7
    const-string/jumbo v3, "timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_8
    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_9
    const-string v3, "get-battery-charging"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_a
    const-string v3, "get-storage-seq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_b
    const-string/jumbo v3, "trigger-dock-state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto :goto_2

    :goto_1
    move v2, v1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 70
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->triggerDockState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 68
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->doHeartbeat(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 66
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getJobState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 64
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getStorageNotLow(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 62
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getStorageSeq(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 60
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatteryNotLow(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 58
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatteryCharging(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 56
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatterySeq(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 54
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->monitorBattery(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 52
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->cancelJob(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 50
    :pswitch_a
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->timeout(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 48
    :pswitch_b
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->runJob(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 72
    :goto_3
    return v1

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .end local v2    # "e":Ljava/lang/Exception;
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x70e7e454 -> :sswitch_b
        -0x6e03f1ea -> :sswitch_a
        -0x6495fc38 -> :sswitch_9
        -0x5185d186 -> :sswitch_8
        -0x4e50b29f -> :sswitch_7
        0x1ba8b -> :sswitch_6
        0x34cbf91 -> :sswitch_5
        0xbf970fc -> :sswitch_4
        0x29e960a8 -> :sswitch_3
        0x684a7923 -> :sswitch_2
        0x6ac7b0ca -> :sswitch_1
        0x6e89549a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onHelp()V
    .locals 5

    .line 379
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 381
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Job scheduler (jobscheduler) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    const-string v1, "  run [-f | --force] [-u | --user USER_ID] PACKAGE JOB_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    const-string v1, "    Trigger immediate execution of a specific scheduled job."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const-string v1, "    Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const-string v2, "      -f or --force: run the job even if technical constraints such as"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string v2, "         connectivity are not currently met"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const-string v2, "      -u or --user: specify which user\'s job is to be run; the default is"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string v3, "         the primary or system user"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string v4, "  timeout [-u | --user USER_ID] [PACKAGE] [JOB_ID]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    const-string v4, "    Trigger immediate timeout of currently executing jobs, as if their."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    const-string v4, "    execution timeout had expired."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    const-string v4, "         all users"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    const-string v4, "  cancel [-u | --user USER_ID] PACKAGE [JOB_ID]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    const-string v4, "    Cancel a scheduled job.  If a job ID is not supplied, all jobs scheduled"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    const-string v4, "    by that package will be canceled.  USE WITH CAUTION."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const-string v4, "  heartbeat [num]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const-string v4, "    With no argument, prints the current standby heartbeat.  With a positive"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const-string v4, "    argument, advances the standby heartbeat by that number."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    const-string v4, "  monitor-battery [on|off]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    const-string v4, "    Control monitoring of all battery changes.  Off by default.  Turning"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    const-string v4, "    on makes get-battery-seq useful."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    const-string v4, "  get-battery-seq"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    const-string v4, "    Return the last battery update sequence number that was received."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    const-string v4, "  get-battery-charging"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string v4, "    Return whether the battery is currently considered to be charging."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const-string v4, "  get-battery-not-low"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    const-string v4, "    Return whether the battery is currently considered to not be low."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    const-string v4, "  get-storage-seq"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const-string v4, "    Return the last storage update sequence number that was received."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const-string v4, "  get-storage-not-low"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const-string v4, "    Return whether storage is currently considered to not be low."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    const-string v4, "  get-job-state [-u | --user USER_ID] PACKAGE JOB_ID"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v4, "    Return the current state of a job, may be any combination of:"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    const-string v4, "      pending: currently on the pending list, waiting to be active"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    const-string v4, "      active: job is actively running"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    const-string v4, "      user-stopped: job can\'t run because its user is stopped"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    const-string v4, "      backing-up: job can\'t run because app is currently backing up its data"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    const-string v4, "      no-component: job can\'t run because its component is not available"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    const-string v4, "      ready: job is ready to run (all constraints satisfied or bypassed)"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    const-string v4, "      waiting: if nothing else above is printed, job not ready to run"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    const-string v1, "  trigger-dock-state [idle|active]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    const-string v1, "    Trigger wireless charging dock state.  Active by default."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 434
    return-void
.end method
