.class Lcom/android/server/accounts/AccountManagerService$Injector;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 6244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6245
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    .line 6246
    return-void
.end method


# virtual methods
.method addLocalService(Landroid/accounts/AccountManagerInternal;)V
    .locals 1
    .param p1, "service"    # Landroid/accounts/AccountManagerInternal;

    .line 6260
    const-class v0, Landroid/accounts/AccountManagerInternal;

    invoke-static {v0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6261
    return-void
.end method

.method getAccountAuthenticatorCache()Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .locals 2

    .line 6304
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getCeDatabaseName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 6270
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "accounts_ce.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6272
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 6256
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDeDatabaseName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 6264
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "accounts_de.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6266
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getMessageHandlerLooper()Landroid/os/Looper;
    .locals 4

    .line 6249
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "AccountManagerService"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 6251
    .local v0, "serviceThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 6252
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method getNotificationManager()Landroid/app/INotificationManager;
    .locals 1

    .line 6308
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method getPreNDatabaseName(I)Ljava/lang/String;
    .locals 7
    .param p1, "userId"    # I

    .line 6276
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    .line 6277
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "accounts.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6279
    .local v1, "databaseFile":Ljava/io/File;
    if-nez p1, :cond_3

    .line 6284
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6285
    .local v2, "oldFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6287
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 6288
    .local v3, "userDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6289
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 6290
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User dir cannot be created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6294
    :cond_1
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 6295
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User dir cannot be migrated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6300
    .end local v2    # "oldFile":Ljava/io/File;
    .end local v3    # "userDir":Ljava/io/File;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
