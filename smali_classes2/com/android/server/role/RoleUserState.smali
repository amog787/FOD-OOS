.class public Lcom/android/server/role/RoleUserState;
.super Ljava/lang/Object;
.source "RoleUserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/role/RoleUserState$Callback;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_PACKAGES_HASH:Ljava/lang/String; = "packagesHash"

.field private static final ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ROLES_FILE_NAME:Ljava/lang/String; = "roles.xml"

.field private static final TAG_HOLDER:Ljava/lang/String; = "holder"

.field private static final TAG_ROLE:Ljava/lang/String; = "role"

.field private static final TAG_ROLES:Ljava/lang/String; = "roles"

.field public static final VERSION_UNDEFINED:I = -0x1

.field private static final WRITE_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mCallback:Lcom/android/server/role/RoleUserState$Callback;

.field private mDestroyed:Z

.field private final mLock:Ljava/lang/Object;

.field private mPackagesHash:Ljava/lang/String;

.field private final mPersistence:Lcom/android/role/persistence/RolesPersistence;

.field private mRoles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field private mVersion:I

.field private final mWriteHandler:Landroid/os/Handler;

.field private mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/android/server/role/RoleUserState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/android/server/role/RoleUserState$Callback;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "callback"    # Lcom/android/server/role/RoleUserState$Callback;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lcom/android/role/persistence/RolesPersistence;->createInstance()Lcom/android/role/persistence/RolesPersistence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mPersistence:Lcom/android/role/persistence/RolesPersistence;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    .line 105
    new-instance v0, Landroid/os/Handler;

    .line 106
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    .line 115
    iput p1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    .line 116
    iput-object p2, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    .line 118
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->readFile()V

    .line 119
    return-void
.end method

.method private static getFile(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 555
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "roles.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$e8W_Zaq_FyocW_DX1qcbN0ld0co(Lcom/android/server/role/RoleUserState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->writeFile()V

    return-void
.end method

.method private parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 450
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 454
    .local v0, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 455
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_3

    .line 456
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3

    .line 457
    :cond_1
    if-gt v5, v1, :cond_0

    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    .line 458
    goto :goto_0

    .line 461
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "holder"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    const/4 v3, 0x0

    const-string v6, "name"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "roleHolder":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 464
    .end local v3    # "roleHolder":Ljava/lang/String;
    goto :goto_0

    .line 467
    .end local v5    # "depth":I
    :cond_3
    return-object v0
.end method

.method private parseRolesLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 426
    const/4 v0, 0x0

    const-string v1, "version"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 427
    const-string v1, "packagesHash"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 428
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 432
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 433
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_3

    .line 434
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3

    .line 435
    :cond_1
    if-gt v5, v1, :cond_0

    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    .line 436
    goto :goto_0

    .line 439
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "role"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    const-string v3, "name"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "roleName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleUserState;->parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v6

    .line 442
    .local v6, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .end local v3    # "roleName":Ljava/lang/String;
    .end local v6    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 445
    .end local v5    # "depth":I
    :cond_3
    return-void
.end method

.method private parseXmlLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 409
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 410
    .local v0, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_3

    .line 411
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3

    .line 412
    :cond_1
    if-gt v4, v0, :cond_0

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    .line 413
    goto :goto_0

    .line 416
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "roles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleUserState;->parseRolesLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 418
    return-void

    .line 421
    .end local v4    # "depth":I
    :cond_3
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Missing <roles> in roles.xml"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method private readFile()V
    .locals 7

    .line 371
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPersistence:Lcom/android/role/persistence/RolesPersistence;

    iget v2, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/role/persistence/RolesPersistence;->readForUser(Landroid/os/UserHandle;)Lcom/android/role/persistence/RolesState;

    move-result-object v1

    .line 373
    .local v1, "roles":Lcom/android/role/persistence/RolesState;
    if-nez v1, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->readLegacyFileLocked()V

    .line 375
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 376
    monitor-exit v0

    return-void

    .line 379
    :cond_0
    invoke-virtual {v1}, Lcom/android/role/persistence/RolesState;->getVersion()I

    move-result v2

    iput v2, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 380
    invoke-virtual {v1}, Lcom/android/role/persistence/RolesState;->getPackagesHash()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 382
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 383
    invoke-virtual {v1}, Lcom/android/role/persistence/RolesState;->getRoles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 384
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 385
    .local v4, "roleName":Ljava/lang/String;
    new-instance v5, Landroid/util/ArraySet;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 386
    .local v5, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "roleName":Ljava/lang/String;
    .end local v5    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 388
    .end local v1    # "roles":Lcom/android/role/persistence/RolesState;
    :cond_1
    monitor-exit v0

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readLegacyFileLocked()V
    .locals 5

    .line 392
    iget v0, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v0}, Lcom/android/server/role/RoleUserState;->getFile(I)Ljava/io/File;

    move-result-object v0

    .line 393
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 395
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, v2}, Lcom/android/server/role/RoleUserState;->parseXmlLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 397
    sget-object v3, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Read roles.xml successfully"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 393
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/role/RoleUserState;
    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 400
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/role/RoleUserState;
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse roles.xml: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 399
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v3, "roles.xml not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    nop

    .line 403
    return-void
.end method

.method private scheduleWriteFileLocked()V
    .locals 4

    .line 342
    iget-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/role/-$$Lambda$RoleUserState$e8W_Zaq_FyocW_DX1qcbN0ld0co;->INSTANCE:Lcom/android/server/role/-$$Lambda$RoleUserState$e8W_Zaq_FyocW_DX1qcbN0ld0co;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    .line 351
    :cond_1
    return-void
.end method

.method private snapshotRolesLocked()Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 527
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 528
    .local v0, "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 529
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 530
    .local v3, "roleName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 532
    .local v4, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v4, v5

    .line 533
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .end local v3    # "roleName":Ljava/lang/String;
    .end local v4    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-object v0
.end method

.method private writeFile()V
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 358
    monitor-exit v0

    return-void

    .line 361
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    .line 363
    new-instance v1, Lcom/android/role/persistence/RolesState;

    iget v2, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/role/persistence/RolesState;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    .line 365
    .local v1, "roles":Lcom/android/role/persistence/RolesState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mPersistence:Lcom/android/role/persistence/RolesPersistence;

    iget v2, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/role/persistence/RolesPersistence;->writeForUser(Lcom/android/role/persistence/RolesState;Landroid/os/UserHandle;)V

    .line 368
    return-void

    .line 365
    .end local v1    # "roles":Lcom/android/role/persistence/RolesState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 271
    .local v1, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 272
    sget-object v2, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add role holder for unknown role, role: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 276
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 277
    .local v2, "changed":Z
    if-eqz v2, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 280
    .end local v1    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    if-eqz v2, :cond_2

    .line 283
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v3, p2}, Lcom/android/server/role/RoleUserState$Callback;->onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 280
    .end local v2    # "changed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addRoleName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "roleName"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added new role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 216
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 218
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    if-nez v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 548
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPersistence:Lcom/android/role/persistence/RolesPersistence;

    iget v2, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/role/persistence/RolesPersistence;->deleteForUser(Landroid/os/UserHandle;)V

    .line 549
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    .line 550
    monitor-exit v0

    .line 551
    return-void

    .line 545
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This RoleUserState has already been destroyed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/role/RoleUserState;
    throw v1

    .line 550
    .restart local p0    # "this":Lcom/android/server/role/RoleUserState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 18
    .param p1, "dumpOutputStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "fieldId"    # J

    .line 480
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 481
    :try_start_0
    iget v0, v1, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 482
    .local v0, "version":I
    iget-object v4, v1, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 483
    .local v4, "packagesHash":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v5

    .line 484
    .local v5, "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 487
    .local v6, "fieldToken":J
    const-wide v8, 0x10500000001L

    iget v3, v1, Lcom/android/server/role/RoleUserState;->mUserId:I

    const-string v10, "user_id"

    invoke-virtual {v2, v10, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 488
    const-wide v8, 0x10500000002L

    const-string v3, "version"

    invoke-virtual {v2, v3, v8, v9, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 489
    const-wide v8, 0x10900000003L

    const-string v3, "packages_hash"

    invoke-virtual {v2, v3, v8, v9, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 491
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 492
    .local v3, "rolesSize":I
    const/4 v8, 0x0

    .local v8, "rolesIndex":I
    :goto_0
    if-ge v8, v3, :cond_1

    .line 493
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 494
    .local v9, "roleName":Ljava/lang/String;
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 496
    .local v10, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide v11, 0x20b00000004L

    const-string v13, "roles"

    invoke-virtual {v2, v13, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 497
    .local v11, "rolesToken":J
    const-wide v13, 0x10900000001L

    const-string v15, "name"

    invoke-virtual {v2, v15, v13, v14, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 499
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 500
    .local v13, "roleHoldersSize":I
    const/4 v14, 0x0

    .local v14, "roleHoldersIndex":I
    :goto_1
    if-ge v14, v13, :cond_0

    .line 501
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 503
    .local v15, "roleHolder":Ljava/lang/String;
    move/from16 v16, v0

    .end local v0    # "version":I
    .local v16, "version":I
    const-wide v0, 0x20900000002L

    move/from16 v17, v3

    .end local v3    # "rolesSize":I
    .local v17, "rolesSize":I
    const-string v3, "holders"

    invoke-virtual {v2, v3, v0, v1, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 500
    .end local v15    # "roleHolder":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move/from16 v0, v16

    move/from16 v3, v17

    goto :goto_1

    .end local v16    # "version":I
    .end local v17    # "rolesSize":I
    .restart local v0    # "version":I
    .restart local v3    # "rolesSize":I
    :cond_0
    move/from16 v16, v0

    move/from16 v17, v3

    .line 506
    .end local v0    # "version":I
    .end local v3    # "rolesSize":I
    .end local v14    # "roleHoldersIndex":I
    .restart local v16    # "version":I
    .restart local v17    # "rolesSize":I
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 492
    .end local v9    # "roleName":Ljava/lang/String;
    .end local v10    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "rolesToken":J
    .end local v13    # "roleHoldersSize":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    goto :goto_0

    .line 509
    .end local v8    # "rolesIndex":I
    .end local v16    # "version":I
    .end local v17    # "rolesSize":I
    .restart local v0    # "version":I
    .restart local v3    # "rolesSize":I
    :cond_1
    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 510
    return-void

    .line 484
    .end local v0    # "version":I
    .end local v3    # "rolesSize":I
    .end local v4    # "packagesHash":Ljava/lang/String;
    .end local v5    # "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v6    # "fieldToken":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHeldRoles(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v1, "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 328
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 329
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 333
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0

    return-object v1

    .line 334
    .end local v1    # "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackagesHash()Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 196
    .local v1, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 197
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 199
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit v0

    return-object v2

    .line 200
    .end local v1    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRolesAndHolders()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVersion()I
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    monitor-exit v0

    return v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRoleAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 302
    .local v1, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 303
    sget-object v2, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove role holder for unknown role, role: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 308
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 309
    .local v2, "changed":Z
    if-eqz v2, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 312
    .end local v1    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    if-eqz v2, :cond_2

    .line 315
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, p2, v3}, Lcom/android/server/role/RoleUserState$Callback;->onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 312
    .end local v2    # "changed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPackagesHash(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagesHash"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    monitor-exit v0

    return-void

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRoleNames(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, "changed":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 233
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 235
    .local v3, "roleName":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 236
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 237
    .local v4, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 238
    sget-object v5, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Holders of a removed role should have been cleaned up, role: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", holders: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget-object v5, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 242
    const/4 v1, 0x1

    .line 232
    .end local v3    # "roleName":Ljava/lang/String;
    .end local v4    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 246
    .end local v2    # "i":I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 247
    .local v2, "roleNamesSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 248
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/role/RoleUserState;->addRoleName(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    .end local v3    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 252
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 254
    .end local v1    # "changed":Z
    .end local v2    # "roleNamesSize":I
    :cond_4
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .line 136
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    if-ne v1, p1, :cond_0

    .line 138
    monitor-exit v0

    return-void

    .line 140
    :cond_0
    iput p1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 141
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
