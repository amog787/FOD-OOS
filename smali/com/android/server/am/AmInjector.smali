.class public Lcom/android/server/am/AmInjector;
.super Ljava/lang/Object;
.source "AmInjector.java"


# static fields
.field private static final DEBUG_PARALLEL_APP:Z

.field static final IS_PARALLEL_APP_FEATURED:Z

.field private static final PARALLEL_APP_TAG:Ljava/lang/String; = "Parallel App"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/AmInjector;->DEBUG_PARALLEL_APP:Z

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    aput v2, v0, v1

    .line 40
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/AmInjector;->IS_PARALLEL_APP_FEATURED:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastIntentExtras(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 80
    sget-boolean v0, Lcom/android/server/am/AmInjector;->IS_PARALLEL_APP_FEATURED:Z

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    :cond_1
    return-void
.end method

.method public static contentProviderUser(Landroid/content/pm/ProviderInfo;IIILcom/android/server/am/UserController;)I
    .locals 11
    .param p0, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p1, "userId"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "mUserController"    # Lcom/android/server/am/UserController;

    .line 57
    nop

    .line 58
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 57
    const-string v2, "Parallel App"

    invoke-static {v2, v0, v1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkContentProviderPermissionLocked: switch userId from ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") to ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v1

    .line 63
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkContentProviderPermissionLocked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, p4

    move v4, p2

    move v5, p3

    move v6, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final initOneplusContextStub(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .line 44
    const-string v0, "ActivityManager"

    :try_start_0
    const-string v1, "com.oneplus.android.server.context.OneplusContextStubImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 46
    .local v1, "ctxStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 47
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/server/context/IOneplusContextStub;

    .line 48
    .local v2, "ctxStubInstance":Lcom/oneplus/android/server/context/IOneplusContextStub;
    invoke-static {v2}, Lcom/oneplus/android/server/context/OneplusContextStub;->attach(Lcom/oneplus/android/server/context/IOneplusContextStub;)V

    .line 49
    const-string v4, "OneplusContextStub attach OK!"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .end local v1    # "ctxStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ctxStubInstance":Lcom/oneplus/android/server/context/IOneplusContextStub;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OneplusContextStub attach got Exception..."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static isAllowToUserAllBroadcast(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 103
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static mimeProviderUser(Ljava/lang/String;ILandroid/net/Uri;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 70
    const-string v0, "Parallel App"

    invoke-static {v0, p1, p0}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProviderMimeType: switch userId from ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 p1, 0x0

    .line 76
    :cond_0
    return p1
.end method

.method public static parallelGids([ILcom/android/server/am/ProcessRecord;)[I
    .locals 4
    .param p0, "gids"    # [I
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 109
    sget-boolean v0, Lcom/android/server/am/AmInjector;->IS_PARALLEL_APP_FEATURED:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const/16 v1, 0x3e7

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v0, v1, :cond_3

    .line 112
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 113
    .local v0, "newgids":[I
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v2, v1, :cond_1

    .line 115
    array-length v1, p0

    invoke-static {v3}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 116
    :cond_1
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v2, :cond_2

    .line 117
    array-length v2, p0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v1

    aput v1, v0, v2

    .line 119
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update gids("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") for user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Parallel App"

    invoke-static {v2, v1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-object v0

    .line 123
    .end local v0    # "newgids":[I
    :cond_3
    return-object p0
.end method

.method public static usersAdd([ILandroid/content/Intent;I)[I
    .locals 2
    .param p0, "users"    # [I
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 89
    sget-boolean v0, Lcom/android/server/am/AmInjector;->IS_PARALLEL_APP_FEATURED:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lcom/android/server/am/AmInjector;->isAllowToUserAllBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object v0

    .line 95
    :cond_0
    return-object p0
.end method
