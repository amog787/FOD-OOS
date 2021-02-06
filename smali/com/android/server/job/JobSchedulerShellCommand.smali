.class public final Lcom/android/server/job/JobSchedulerShellCommand;
.super Landroid/os/BasicShellCommandHandler;
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
    invoke-direct {p0}, Landroid/os/BasicShellCommandHandler;-><init>()V

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

    .line 230
    const-string v0, "cancel jobs"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    .line 235
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

    .line 236
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

    .line 243
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

    .line 244
    return v4

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 240
    nop

    .line 244
    goto :goto_0

    .line 248
    :cond_4
    if-gez v0, :cond_5

    .line 249
    const-string v1, "Error: must specify a concrete user ID"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    return v4

    .line 253
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, "jobIdStr":Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto :goto_3

    :cond_6
    move v6, v4

    .line 257
    .local v6, "jobId":I
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 259
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

    .line 261
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    return v1

    .line 261
    :catchall_0
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 262
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

    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 86
    .local v0, "uid":I
    if-nez v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "perm":I
    if-nez v1, :cond_1

    .line 96
    return-void

    .line 93
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
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    const-string/jumbo v0, "manipulate scheduler heartbeat"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 358
    const-string v0, "Heartbeat command is no longer supported"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    const/4 v0, -0x1

    return v0
.end method

.method private getBatteryCharging(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 295
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getBatteryCharging()Z

    move-result v0

    .line 296
    .local v0, "val":Z
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 297
    const/4 v1, 0x0

    return v1
.end method

.method private getBatteryNotLow(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 301
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getBatteryNotLow()Z

    move-result v0

    .line 302
    .local v0, "val":Z
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 303
    const/4 v1, 0x0

    return v1
.end method

.method private getBatterySeq(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 289
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getBatterySeq()I

    move-result v0

    .line 290
    .local v0, "seq":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 291
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

    .line 319
    const-string v0, "force timeout jobs"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x0

    .line 324
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 325
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

    .line 332
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

    .line 333
    return v5

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 329
    nop

    .line 333
    goto :goto_0

    .line 337
    :cond_4
    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    .line 338
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 341
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "jobIdStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 345
    .local v4, "jobId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 347
    .local v5, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v7, p1, v1, v0, v4}, Lcom/android/server/job/JobSchedulerService;->getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I

    move-result v7

    .line 348
    .local v7, "ret":I
    invoke-direct {p0, v7, v1, v0, v4}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    nop

    .line 351
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    return v7

    .line 351
    .end local v7    # "ret":I
    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw v7
.end method

.method private getStorageNotLow(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 313
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getStorageNotLow()Z

    move-result v0

    .line 314
    .local v0, "val":Z
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 315
    const/4 v1, 0x0

    return v1
.end method

.method private getStorageSeq(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 307
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getStorageSeq()I

    move-result v0

    .line 308
    .local v0, "seq":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 309
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

    .line 266
    const-string v0, "change battery monitoring"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "opt":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const/4 v1, 0x1

    .local v1, "enabled":Z
    goto :goto_0

    .line 271
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    const/4 v1, 0x0

    .line 277
    .restart local v1    # "enabled":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 279
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v1}, Lcom/android/server/job/JobSchedulerService;->setMonitorBattery(Z)V

    .line 280
    if-eqz v1, :cond_1

    const-string v4, "Battery monitoring enabled"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_1
    const-string v4, "Battery monitoring disabled"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    nop

    .line 285
    const/4 v4, 0x0

    return v4

    .line 283
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    throw v4

    .line 274
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

    .line 275
    const/4 v1, 0x1

    return v1
.end method

.method private printError(ILjava/lang/String;II)Z
    .locals 5
    .param p1, "errCode"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "jobId"    # I

    .line 100
    const-string v0, " in package "

    const/4 v1, 0x1

    const-string v2, " / user "

    packed-switch p1, :pswitch_data_0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 103
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v3, "Package not found: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 107
    return v1

    .line 110
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 111
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v4, "Could not find job "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 113
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 117
    return v1

    .line 120
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 121
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    const-string v4, "Job "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 123
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 127
    const-string v0, " has functional constraints but --force not specified"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    return v1

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetExecutionQuota(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 363
    const-string/jumbo v0, "reset execution quota"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x0

    .line 368
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 369
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v4, 0x5e8

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v1, v4, :cond_2

    const v3, 0x4f7b216b

    if-eq v1, v3, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, v5

    goto :goto_2

    :cond_2
    const-string v1, "-u"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :goto_1
    move v3, v6

    :goto_2
    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_3

    .line 376
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

    .line 377
    return v6

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 373
    nop

    .line 377
    goto :goto_0

    .line 381
    :cond_4
    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    .line 382
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 385
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 389
    .local v4, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v1, v0}, Lcom/android/server/job/JobSchedulerService;->resetExecutionQuota(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    nop

    .line 393
    return v3

    .line 391
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    throw v3
.end method

.method private resetScheduleQuota(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 397
    const-string/jumbo v0, "reset schedule quota"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 401
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->resetScheduleQuota()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 404
    nop

    .line 405
    const/4 v2, 0x0

    return v2

    .line 403
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 404
    throw v2
.end method

.method private runJob(Ljava/io/PrintWriter;)I
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    const-string v0, "force scheduled jobs"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "force":Z
    const/4 v1, 0x0

    .line 140
    .local v1, "satisfied":Z
    const/4 v2, 0x0

    .line 143
    .local v2, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .local v9, "opt":Ljava/lang/String;
    const/4 v4, -0x1

    if-eqz v3, :cond_a

    .line 144
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v5, -0x60ebf6b5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v3, v5, :cond_6

    const v5, -0x39cf9d6e

    if-eq v3, v5, :cond_5

    const/16 v5, 0x5d9

    if-eq v3, v5, :cond_4

    const/16 v5, 0x5e6

    if-eq v3, v5, :cond_3

    const/16 v5, 0x5e8

    if-eq v3, v5, :cond_2

    const v5, 0x4f7b216b

    if-eq v3, v5, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v3, "--user"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_2

    :cond_2
    const-string v3, "-u"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_2

    :cond_3
    const-string v3, "-s"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v10

    goto :goto_2

    :cond_4
    const-string v3, "-f"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const-string v3, "--satisfied"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_2

    :cond_6
    const-string v3, "--force"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v11

    goto :goto_2

    :goto_1
    move v3, v4

    :goto_2
    if-eqz v3, :cond_9

    if-eq v3, v11, :cond_9

    if-eq v3, v10, :cond_8

    if-eq v3, v8, :cond_8

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_7

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    return v4

    .line 157
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 158
    goto :goto_3

    .line 152
    :cond_8
    const/4 v1, 0x1

    .line 153
    goto :goto_3

    .line 147
    :cond_9
    const/4 v0, 0x1

    .line 148
    nop

    .line 162
    :goto_3
    goto/16 :goto_0

    .line 166
    :cond_a
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 167
    const-string v3, "Cannot specify both --force and --satisfied"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    return v4

    .line 171
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 174
    .local v11, "jobId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 176
    .local v12, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    move-object v4, v10

    move v5, v2

    move v6, v11

    move v7, v1

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerService;->executeRunCommand(Ljava/lang/String;IIZZ)I

    move-result v3

    .line 177
    .local v3, "ret":I
    invoke-direct {p0, v3, v10, v2, v11}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;II)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_c

    .line 178
    nop

    .line 190
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    return v3

    .line 182
    :cond_c
    :try_start_1
    const-string v4, "Running job"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    if-eqz v0, :cond_d

    .line 184
    const-string v4, " [FORCED]"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    :cond_d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    nop

    .line 190
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return v3

    .line 190
    .end local v3    # "ret":I
    :catchall_0
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    throw v3
.end method

.method private timeout(Ljava/io/PrintWriter;)I
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    move-object/from16 v1, p0

    const-string v0, "force timeout jobs"

    invoke-direct {v1, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 197
    const/4 v0, -0x1

    .line 200
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

    .line 201
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

    .line 208
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

    .line 209
    return v6

    .line 201
    :cond_3
    move-object/from16 v13, p1

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 205
    nop

    .line 209
    goto :goto_0

    .line 213
    :cond_4
    move-object/from16 v13, p1

    const/4 v2, -0x2

    if-ne v0, v2, :cond_5

    .line 214
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    move v2, v0

    goto :goto_3

    .line 213
    :cond_5
    move v2, v0

    .line 217
    .end local v0    # "userId":I
    .local v2, "userId":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v14

    .line 218
    .local v14, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v15

    .line 219
    .local v15, "jobIdStr":Ljava/lang/String;
    if-eqz v15, :cond_6

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_6
    move v12, v6

    .line 221
    .local v12, "jobId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 223
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

    .line 225
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    return v0

    .line 225
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
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

    .line 409
    const-string/jumbo v0, "trigger wireless charging dock state"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "opt":Ljava/lang/String;
    const-string v1, "idle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const/4 v1, 0x1

    .local v1, "idleState":Z
    goto :goto_0

    .line 415
    .end local v1    # "idleState":Z
    :cond_0
    const-string v1, "active"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    const/4 v1, 0x0

    .line 422
    .restart local v1    # "idleState":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 424
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v1}, Lcom/android/server/job/JobSchedulerService;->triggerDockState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    nop

    .line 428
    const/4 v4, 0x0

    return v4

    .line 426
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    throw v4

    .line 418
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

    .line 419
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

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v3, "reset-schedule-quota"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v3, "reset-execution-quota"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto :goto_2

    :sswitch_5
    const-string v3, "get-battery-seq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_6
    const-string v3, "heartbeat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto :goto_2

    :sswitch_7
    const-string v3, "get-storage-not-low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_8
    const-string/jumbo v3, "run"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_9
    const-string/jumbo v3, "timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_a
    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_b
    const-string v3, "get-battery-charging"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_c
    const-string v3, "get-storage-seq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_d
    const-string/jumbo v3, "trigger-dock-state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto :goto_2

    :goto_1
    move v2, v1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 74
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->triggerDockState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 72
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->resetScheduleQuota(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 70
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->resetExecutionQuota(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 68
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->doHeartbeat(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 66
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getJobState(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 64
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getStorageNotLow(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 62
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getStorageSeq(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 60
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatteryNotLow(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 58
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatteryCharging(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 56
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatterySeq(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 54
    :pswitch_a
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->monitorBattery(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 52
    :pswitch_b
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->cancelJob(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 50
    :pswitch_c
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->timeout(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 48
    :pswitch_d
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->runJob(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 76
    :goto_3
    return v1

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .end local v2    # "e":Ljava/lang/Exception;
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x70e7e454 -> :sswitch_d
        -0x6e03f1ea -> :sswitch_c
        -0x6495fc38 -> :sswitch_b
        -0x5185d186 -> :sswitch_a
        -0x4e50b29f -> :sswitch_9
        0x1ba8b -> :sswitch_8
        0x34cbf91 -> :sswitch_7
        0xbf970fc -> :sswitch_6
        0x29e960a8 -> :sswitch_5
        0x313f4b05 -> :sswitch_4
        0x3338c000 -> :sswitch_3
        0x684a7923 -> :sswitch_2
        0x6ac7b0ca -> :sswitch_1
        0x6e89549a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onHelp()V
    .locals 5

    .line 433
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 435
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Job scheduler (jobscheduler) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    const-string v1, "  run [-f | --force] [-s | --satisfied] [-u | --user USER_ID] PACKAGE JOB_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    const-string v1, "    Trigger immediate execution of a specific scheduled job. For historical"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    const-string v1, "    reasons, some constraints, such as battery, are ignored when this"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    const-string v1, "    command is called. If you don\'t want any constraints to be ignored,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    const-string v1, "    include the -s flag."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    const-string v1, "    Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    const-string v2, "      -f or --force: run the job even if technical constraints such as"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    const-string v2, "         connectivity are not currently met. This is incompatible with -f "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    const-string v2, "         and so an error will be reported if both are given."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    const-string v2, "      -s or --satisfied: run the job only if all constraints are met."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    const-string v2, "         This is incompatible with -f and so an error will be reported"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    const-string v2, "         if both are given."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    const-string v2, "      -u or --user: specify which user\'s job is to be run; the default is"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    const-string v3, "         the primary or system user"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    const-string v4, "  timeout [-u | --user USER_ID] [PACKAGE] [JOB_ID]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    const-string v4, "    Trigger immediate timeout of currently executing jobs, as if their."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    const-string v4, "    execution timeout had expired."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    const-string v4, "         all users"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    const-string v4, "  cancel [-u | --user USER_ID] PACKAGE [JOB_ID]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    const-string v4, "    Cancel a scheduled job.  If a job ID is not supplied, all jobs scheduled"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    const-string v4, "    by that package will be canceled.  USE WITH CAUTION."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    const-string v4, "  heartbeat [num]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    const-string v4, "    No longer used."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    const-string v4, "  monitor-battery [on|off]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    const-string v4, "    Control monitoring of all battery changes.  Off by default.  Turning"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    const-string v4, "    on makes get-battery-seq useful."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    const-string v4, "  get-battery-seq"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    const-string v4, "    Return the last battery update sequence number that was received."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    const-string v4, "  get-battery-charging"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    const-string v4, "    Return whether the battery is currently considered to be charging."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    const-string v4, "  get-battery-not-low"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    const-string v4, "    Return whether the battery is currently considered to not be low."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    const-string v4, "  get-storage-seq"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    const-string v4, "    Return the last storage update sequence number that was received."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    const-string v4, "  get-storage-not-low"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    const-string v4, "    Return whether storage is currently considered to not be low."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    const-string v4, "  get-job-state [-u | --user USER_ID] PACKAGE JOB_ID"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    const-string v4, "    Return the current state of a job, may be any combination of:"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    const-string v4, "      pending: currently on the pending list, waiting to be active"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    const-string v4, "      active: job is actively running"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    const-string v4, "      user-stopped: job can\'t run because its user is stopped"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    const-string v4, "      backing-up: job can\'t run because app is currently backing up its data"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    const-string v4, "      no-component: job can\'t run because its component is not available"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    const-string v4, "      ready: job is ready to run (all constraints satisfied or bypassed)"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    const-string v4, "      waiting: if nothing else above is printed, job not ready to run"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    const-string v1, "  trigger-dock-state [idle|active]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    const-string v1, "    Trigger wireless charging dock state.  Active by default."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 494
    return-void
.end method
