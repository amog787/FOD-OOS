.class public Lcom/android/server/SystemServiceManager;
.super Ljava/lang/Object;
.source "SystemServiceManager.java"


# static fields
.field private static final CLEANUP:Ljava/lang/String; = "Cleanup"

.field private static final DEBUG:Z = false

.field private static final SERVICE_CALL_WARN_TIME_MS:I = 0x32

.field private static final START:Ljava/lang/String; = "Start"

.field private static final STOP:Ljava/lang/String; = "Stop"

.field private static final SWITCH:Ljava/lang/String; = "Switch"

.field private static final TAG:Ljava/lang/String; = "SystemServiceManager"

.field private static final UNLOCKED:Ljava/lang/String; = "Unlocked"

.field private static final UNLOCKING:Ljava/lang/String; = "Unlocking"

.field private static sSystemDir:Ljava/io/File;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPhase:I

.field private final mLoadedPaths:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ldalvik/system/PathClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mRuntimeRestarted:Z

.field private mRuntimeStartElapsedTime:J

.field private mRuntimeStartUptime:J

.field private mSafeMode:Z

.field private final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mLoadedPaths:Landroid/util/ArrayMap;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 78
    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public static ensureSystemDir()Ljava/io/File;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    sget-object v0, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 428
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 429
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    .line 430
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 432
    .end local v0    # "dataDir":Ljava/io/File;
    :cond_0
    sget-object v0, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    return-object v0
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userHandle"    # I

    .line 244
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 248
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 251
    return-object v0

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No UserInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "mUserManagerInternal not set yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation

    .line 116
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from class loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": service class not found, usually indicates that the caller should have called PackageManager.hasSystemFeature() to check whether the feature is available on this device before trying to start the services that implement it. Also ensure that the correct path for the classloader is supplied, if applicable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;I)V
    .locals 1
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "onWhat"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 302
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;II)V

    .line 303
    return-void
.end method

.method private onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;II)V
    .locals 19
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "onWhat"    # Ljava/lang/String;
    .param p3, "curUserId"    # I
    .param p4, "prevUserId"    # I

    .line 307
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ssm."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "User-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling on"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "User "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "SystemServiceManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Lcom/android/server/SystemService$TargetUser;

    invoke-direct {v1, v4}, Lcom/android/server/SystemServiceManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    move-object v8, v0

    .line 310
    .local v8, "curUser":Lcom/android/server/SystemService$TargetUser;
    const/16 v0, -0x2710

    if-ne v5, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :cond_0
    new-instance v0, Lcom/android/server/SystemService$TargetUser;

    invoke-direct {v1, v5}, Lcom/android/server/SystemServiceManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    :goto_0
    move-object v9, v0

    .line 312
    .local v9, "prevUser":Lcom/android/server/SystemService$TargetUser;
    iget-object v0, v1, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 313
    .local v10, "serviceLen":I
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_a

    .line 314
    iget-object v0, v1, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/SystemService;

    .line 315
    .local v12, "service":Lcom/android/server/SystemService;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    .line 316
    .local v13, "serviceName":Ljava/lang/String;
    invoke-virtual {v12, v8}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v0

    .line 320
    .local v0, "supported":Z
    if-nez v0, :cond_1

    if-eqz v9, :cond_1

    .line 321
    invoke-virtual {v12, v9}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v0

    move v14, v0

    goto :goto_2

    .line 324
    :cond_1
    move v14, v0

    .end local v0    # "supported":Z
    .local v14, "supported":Z
    :goto_2
    if-nez v14, :cond_2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " on "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v17, v7

    move-object v5, v8

    goto/16 :goto_7

    .line 335
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ssm.on"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 338
    .local v15, "time":J
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_3
    goto :goto_3

    :sswitch_0
    const-string v0, "Start"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :sswitch_1
    const-string v0, "Stop"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_4

    :sswitch_2
    const-string v0, "Unlocked"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_4

    :sswitch_3
    const-string v0, "Unlocking"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_4

    :sswitch_4
    const-string v0, "Cleanup"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_4

    :sswitch_5
    const-string v0, "Switch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    :goto_3
    const/4 v0, -0x1

    :goto_4
    if-eqz v0, :cond_9

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 355
    invoke-virtual {v12, v8}, Lcom/android/server/SystemService;->onUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    .line 356
    goto :goto_5

    .line 358
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " what?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "curUser":Lcom/android/server/SystemService$TargetUser;
    .end local v9    # "prevUser":Lcom/android/server/SystemService$TargetUser;
    .end local v10    # "serviceLen":I
    .end local v11    # "i":I
    .end local v12    # "service":Lcom/android/server/SystemService;
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v14    # "supported":Z
    .end local v15    # "time":J
    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p2    # "onWhat":Ljava/lang/String;
    .end local p3    # "curUserId":I
    .end local p4    # "prevUserId":I
    throw v0

    .line 352
    .restart local v8    # "curUser":Lcom/android/server/SystemService$TargetUser;
    .restart local v9    # "prevUser":Lcom/android/server/SystemService$TargetUser;
    .restart local v10    # "serviceLen":I
    .restart local v11    # "i":I
    .restart local v12    # "service":Lcom/android/server/SystemService;
    .restart local v13    # "serviceName":Ljava/lang/String;
    .restart local v14    # "supported":Z
    .restart local v15    # "time":J
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p2    # "onWhat":Ljava/lang/String;
    .restart local p3    # "curUserId":I
    .restart local p4    # "prevUserId":I
    :cond_5
    invoke-virtual {v12, v8}, Lcom/android/server/SystemService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    .line 353
    goto :goto_5

    .line 349
    :cond_6
    invoke-virtual {v12, v8}, Lcom/android/server/SystemService;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    .line 350
    goto :goto_5

    .line 346
    :cond_7
    invoke-virtual {v12, v8}, Lcom/android/server/SystemService;->onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    .line 347
    goto :goto_5

    .line 343
    :cond_8
    invoke-virtual {v12, v8}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 344
    goto :goto_5

    .line 340
    :cond_9
    invoke-virtual {v12, v9, v8}, Lcom/android/server/SystemService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    nop

    .line 363
    :goto_5
    goto :goto_6

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reporting "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to service "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-object v2, v7

    move-object v5, v8

    .end local v8    # "curUser":Lcom/android/server/SystemService$TargetUser;
    .local v5, "curUser":Lcom/android/server/SystemService$TargetUser;
    sub-long v7, v17, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v7, v8, v12, v0}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 313
    .end local v12    # "service":Lcom/android/server/SystemService;
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v14    # "supported":Z
    .end local v15    # "time":J
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move-object v8, v5

    move-object/from16 v7, v17

    move/from16 v5, p4

    goto/16 :goto_1

    .line 368
    .end local v5    # "curUser":Lcom/android/server/SystemService$TargetUser;
    .end local v11    # "i":I
    .restart local v8    # "curUser":Lcom/android/server/SystemService$TargetUser;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 369
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b9f5cac -> :sswitch_5
        -0x69b6117c -> :sswitch_4
        -0xe559e02 -> :sswitch_3
        -0x8b870fd -> :sswitch_2
        0x277c22 -> :sswitch_1
        0x4c7d442 -> :sswitch_0
    .end sparse-switch
.end method

.method private onUser(Ljava/lang/String;I)V
    .locals 1
    .param p1, "onWhat"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 297
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;I)V

    .line 298
    return-void
.end method

.method private warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V
    .locals 2
    .param p1, "duration"    # J
    .param p3, "service"    # Lcom/android/server/SystemService;
    .param p4, "operation"    # Ljava/lang/String;

    .line 413
    const-wide/16 v0, 0x32

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemServiceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanupUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 293
    const-string v0, "Cleanup"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    .line 294
    return-void
.end method

.method public dump()V
    .locals 6

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Current phase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v2, "Services:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 443
    .local v2, "startedLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 444
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SystemService;

    .line 445
    .local v4, "service":Lcom/android/server/SystemService;
    const-string v5, "\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .end local v4    # "service":Lcom/android/server/SystemService;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SystemServiceManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method public getRuntimeStartElapsedTime()J
    .locals 2

    .line 395
    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    return-wide v0
.end method

.method public getRuntimeStartUptime()J
    .locals 2

    .line 402
    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    return-wide v0
.end method

.method public isBootCompleted()Z
    .locals 2

    .line 233
    iget v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRuntimeRestarted()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    return v0
.end method

.method public isSafeMode()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    return v0
.end method

.method public onUserUnlocked(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 272
    const-string v0, "Unlocked"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    .line 273
    return-void
.end method

.method public preSystemReady()V
    .locals 1

    .line 240
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 241
    return-void
.end method

.method setSafeMode(Z)V
    .locals 0
    .param p1, "safeMode"    # Z

    .line 373
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    .line 374
    return-void
.end method

.method setStartInfo(ZJJ)V
    .locals 0
    .param p1, "runtimeRestarted"    # Z
    .param p2, "runtimeStartElapsedTime"    # J
    .param p4, "runtimeStartUptime"    # J

    .line 407
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 408
    iput-wide p2, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    .line 409
    iput-wide p4, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    .line 410
    return-void
.end method

.method public startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V
    .locals 9
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "phase"    # I

    .line 194
    const-string v0, "OnBootPhase_"

    iget v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    if-le p2, v1, :cond_2

    .line 197
    iput p2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting phase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServiceManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 203
    .local v1, "serviceLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SystemService;

    .line 205
    .local v3, "service":Lcom/android/server/SystemService;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 206
    .local v4, "time":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    iget v6, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v3, v6}, Lcom/android/server/SystemService;->onBootPhase(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    nop

    .line 215
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-string/jumbo v8, "onBootPhase"

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 203
    .end local v3    # "service":Lcom/android/server/SystemService;
    .end local v4    # "time":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .restart local v3    # "service":Lcom/android/server/SystemService;
    .restart local v4    # "time":J
    :catch_0
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to boot service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": onBootPhase threw an exception during phase "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p2    # "phase":I
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "serviceLen":I
    .end local v2    # "i":I
    .end local v3    # "service":Lcom/android/server/SystemService;
    .end local v4    # "time":J
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p2    # "phase":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 220
    nop

    .line 222
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    sub-long/2addr v0, v2

    .line 224
    .local v0, "totalBootTime":J
    const-string v2, "TotalBootTime"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->logDuration(Ljava/lang/String;J)V

    .line 225
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V

    .line 227
    .end local v0    # "totalBootTime":J
    :cond_1
    return-void

    .line 219
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 220
    throw v0

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Next phase must be larger than previous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/SystemService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 138
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, ": service must have a public constructor with a Context argument"

    const-string v1, "Failed to create service "

    const-wide/32 v2, 0x80000

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "name":Ljava/lang/String;
    const-string v5, "SystemServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 143
    const-class v5, Lcom/android/server/SystemService;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 149
    const/4 v5, 0x1

    :try_start_1
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 150
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    aput-object v7, v5, v8

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemService;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    .line 163
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local v0, "service":Lcom/android/server/SystemService;, "TT;"
    nop

    .line 165
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    nop

    .line 168
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 166
    return-object v0

    .line 160
    .end local v0    # "service":Lcom/android/server/SystemService;, "TT;"
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": service constructor threw an exception"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v5

    .line 157
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_1
    move-exception v5

    .line 158
    .local v5, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v6

    .line 154
    .end local v5    # "ex":Ljava/lang/NoSuchMethodException;
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_2
    move-exception v5

    .line 155
    .local v5, "ex":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v6

    .line 151
    .end local v5    # "ex":Ljava/lang/IllegalAccessException;
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_3
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": service could not be instantiated"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v5

    .line 144
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": service must extend "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/android/server/SystemService;

    .line 145
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/SystemServiceManager;
    .end local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    .end local v4    # "name":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/SystemServiceManager;
    .restart local p1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 169
    throw v0
.end method

.method public startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 87
    nop

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 87
    invoke-static {p1, v0}, Lcom/android/server/SystemServiceManager;->loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    return-object v1
.end method

.method public startService(Lcom/android/server/SystemService;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/SystemService;

    .line 174
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 178
    .local v0, "time":J
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/SystemService;->onStart()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    nop

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string/jumbo v4, "onStart"

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 184
    return-void

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": onStart threw an exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mLoadedPaths:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 99
    .local v0, "pathClassLoader":Ldalvik/system/PathClassLoader;
    if-nez v0, :cond_0

    .line 102
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v0, v1

    .line 103
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mLoadedPaths:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-static {p1, v0}, Lcom/android/server/SystemServiceManager;->loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 106
    .local v1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    return-object v2
.end method

.method public startUser(Lcom/android/server/utils/TimingsTraceAndSlog;I)V
    .locals 1
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "userHandle"    # I

    .line 258
    const-string v0, "Start"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;I)V

    .line 259
    return-void
.end method

.method public stopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 286
    const-string v0, "Stop"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    .line 287
    return-void
.end method

.method public switchUser(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 279
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string v1, "Switch"

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;II)V

    .line 280
    return-void
.end method

.method public unlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 265
    const-string v0, "Unlocking"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    .line 266
    return-void
.end method
