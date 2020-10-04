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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPackagesHash:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRoles:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mWriteHandler:Landroid/os/Handler;

.field private mWriteScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


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

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Landroid/os/Handler;

    .line 104
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    .line 113
    iput p1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    .line 114
    iput-object p2, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    .line 116
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->readFile()V

    .line 117
    return-void
.end method

.method private static getFile(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 621
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "roles.xml"

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

    .line 509
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 513
    .local v0, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 514
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_3

    .line 515
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3

    .line 516
    :cond_1
    if-gt v5, v1, :cond_0

    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    .line 517
    goto :goto_0

    .line 520
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "holder"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    const/4 v3, 0x0

    const-string/jumbo v6, "name"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "roleHolder":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 523
    .end local v3    # "roleHolder":Ljava/lang/String;
    goto :goto_0

    .line 526
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

    .line 485
    const/4 v0, 0x0

    const-string/jumbo v1, "version"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 486
    const-string/jumbo v1, "packagesHash"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 491
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 492
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_3

    .line 493
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3

    .line 494
    :cond_1
    if-gt v5, v1, :cond_0

    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    .line 495
    goto :goto_0

    .line 498
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "role"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 499
    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "roleName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleUserState;->parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v6

    .line 501
    .local v6, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .end local v3    # "roleName":Ljava/lang/String;
    .end local v6    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 504
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

    .line 468
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 469
    .local v0, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_3

    .line 470
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3

    .line 471
    :cond_1
    if-gt v4, v0, :cond_0

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    .line 472
    goto :goto_0

    .line 475
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "roles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleUserState;->parseRolesLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 477
    return-void

    .line 480
    .end local v4    # "depth":I
    :cond_3
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Missing <roles> in roles.xml"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method private readFile()V
    .locals 6

    .line 449
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v1}, Lcom/android/server/role/RoleUserState;->getFile(I)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 451
    .local v1, "file":Ljava/io/File;
    :try_start_1
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 452
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 453
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 454
    invoke-direct {p0, v3}, Lcom/android/server/role/RoleUserState;->parseXmlLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 455
    sget-object v4, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Read roles.xml successfully"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    nop

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 460
    .end local v2    # "in":Ljava/io/FileInputStream;
    :cond_0
    goto :goto_1

    .line 451
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/role/RoleUserState;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 456
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/role/RoleUserState;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_6
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/role/RoleUserState;
    :cond_1
    :goto_0
    throw v4
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 458
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/role/RoleUserState;
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse roles.xml: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/role/RoleUserState;
    throw v3

    .line 456
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/role/RoleUserState;
    :catch_1
    move-exception v2

    .line 457
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "roles.xml not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    nop

    .line 461
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method private scheduleWriteFileLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 358
    iget-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/role/-$$Lambda$RoleUserState$e8W_Zaq_FyocW_DX1qcbN0ld0co;->INSTANCE:Lcom/android/server/role/-$$Lambda$RoleUserState$e8W_Zaq_FyocW_DX1qcbN0ld0co;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    .line 363
    :cond_0
    return-void
.end method

.method private serializeRoleHolders(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArraySet;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    .local p2, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 437
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 439
    .local v2, "roleHolder":Ljava/lang/String;
    const-string v3, "holder"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    .end local v2    # "roleHolder":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method private serializeRoles(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .locals 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "version"    # I
    .param p3, "packagesHash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    .local p4, "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "roles"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    if-eqz p3, :cond_0

    .line 417
    const-string/jumbo v2, "packagesHash"

    invoke-interface {p1, v1, v2, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 421
    invoke-virtual {p4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 422
    .local v4, "roleName":Ljava/lang/String;
    invoke-virtual {p4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 424
    .local v5, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v6, "role"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const-string/jumbo v7, "name"

    invoke-interface {p1, v1, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    invoke-direct {p0, p1, v5}, Lcom/android/server/role/RoleUserState;->serializeRoleHolders(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArraySet;)V

    .line 427
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    .end local v4    # "roleName":Ljava/lang/String;
    .end local v5    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    return-void
.end method

.method private snapshotRolesLocked()Landroid/util/ArrayMap;
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

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

    .line 588
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 589
    .local v0, "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 590
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 591
    .local v3, "roleName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 593
    .local v4, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v4, v5

    .line 594
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .end local v3    # "roleName":Ljava/lang/String;
    .end local v4    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-object v0
.end method

.method private throwIfDestroyedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 614
    iget-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 617
    return-void

    .line 615
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This RoleUserState has already been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeFile()V
    .locals 8

    .line 370
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 372
    monitor-exit v0

    return-void

    .line 375
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    .line 377
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 378
    .local v1, "version":I
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 379
    .local v2, "packagesHash":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v3

    .line 380
    .local v3, "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 382
    new-instance v0, Landroid/util/AtomicFile;

    iget v4, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v4}, Lcom/android/server/role/RoleUserState;->getFile(I)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "roles-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    .line 385
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 387
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 388
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 389
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 391
    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 393
    invoke-direct {p0, v5, v1, v2, v3}, Lcom/android/server/role/RoleUserState;->serializeRoles(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;Landroid/util/ArrayMap;)V

    .line 395
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 396
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 397
    sget-object v6, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Wrote roles.xml successfully"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    nop

    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    .line 398
    :catch_0
    move-exception v5

    .line 399
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v6, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Failed to write roles.xml, restoring backup"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    if-eqz v4, :cond_1

    .line 401
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    nop

    :goto_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 405
    nop

    .line 406
    return-void

    .line 404
    :goto_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 380
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v1    # "version":I
    .end local v2    # "packagesHash":Ljava/lang/String;
    .end local v3    # "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 284
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 285
    .local v1, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 286
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

    .line 288
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 290
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 291
    .local v2, "changed":Z
    if-eqz v2, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 294
    .end local v1    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-eqz v2, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v3, p2}, Lcom/android/server/role/RoleUserState$Callback;->onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 294
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

    .line 219
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 222
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added new role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 226
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 228
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 606
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 607
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v1}, Lcom/android/server/role/RoleUserState;->getFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 608
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    .line 609
    monitor-exit v0

    .line 610
    return-void

    .line 609
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

    .line 539
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 540
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 542
    iget v0, v1, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 543
    .local v0, "version":I
    iget-object v4, v1, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 544
    .local v4, "packagesHash":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v5

    .line 545
    .local v5, "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 548
    .local v6, "fieldToken":J
    const-wide v8, 0x10500000001L

    iget v3, v1, Lcom/android/server/role/RoleUserState;->mUserId:I

    const-string/jumbo v10, "user_id"

    invoke-virtual {v2, v10, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 549
    const-wide v8, 0x10500000002L

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3, v8, v9, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 550
    const-wide v8, 0x10900000003L

    const-string/jumbo v3, "packages_hash"

    invoke-virtual {v2, v3, v8, v9, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 552
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 553
    .local v3, "rolesSize":I
    const/4 v8, 0x0

    .local v8, "rolesIndex":I
    :goto_0
    if-ge v8, v3, :cond_1

    .line 554
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 555
    .local v9, "roleName":Ljava/lang/String;
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 557
    .local v10, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide v11, 0x20b00000004L

    const-string/jumbo v13, "roles"

    invoke-virtual {v2, v13, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 558
    .local v11, "rolesToken":J
    const-wide v13, 0x10900000001L

    const-string/jumbo v15, "name"

    invoke-virtual {v2, v15, v13, v14, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 560
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 561
    .local v13, "roleHoldersSize":I
    const/4 v14, 0x0

    .local v14, "roleHoldersIndex":I
    :goto_1
    if-ge v14, v13, :cond_0

    .line 562
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 564
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

    .line 561
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

    .line 567
    .end local v0    # "version":I
    .end local v3    # "rolesSize":I
    .end local v14    # "roleHoldersIndex":I
    .restart local v16    # "version":I
    .restart local v17    # "rolesSize":I
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 553
    .end local v9    # "roleName":Ljava/lang/String;
    .end local v10    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "rolesToken":J
    .end local v13    # "roleHoldersSize":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    goto :goto_0

    .line 570
    .end local v8    # "rolesIndex":I
    .end local v16    # "version":I
    .end local v17    # "rolesSize":I
    .restart local v0    # "version":I
    .restart local v3    # "rolesSize":I
    :cond_1
    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 571
    return-void

    .line 545
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
    .locals 4
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

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 343
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 344
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getPackagesHash()Ljava/lang/String;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 156
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

    .line 200
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 203
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 204
    .local v1, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 205
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 207
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit v0

    return-object v2

    .line 208
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

    .line 580
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 582
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVersion()I
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 126
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

    .line 184
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 187
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 188
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

    .line 314
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 317
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 318
    .local v1, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 319
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

    .line 321
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 324
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 325
    .local v2, "changed":Z
    if-eqz v2, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 328
    .end local v1    # "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    if-eqz v2, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, p2, v3}, Lcom/android/server/role/RoleUserState$Callback;->onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 328
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

    .line 165
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 168
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    monitor-exit v0

    return-void

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
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

    .line 239
    .local p1, "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 242
    const/4 v1, 0x0

    .line 244
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 245
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    .local v3, "roleName":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 248
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 249
    .local v4, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 250
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

    .line 253
    :cond_0
    iget-object v5, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 254
    const/4 v1, 0x1

    .line 244
    .end local v3    # "roleName":Ljava/lang/String;
    .end local v4    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 258
    .end local v2    # "i":I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 259
    .local v2, "roleNamesSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 260
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/role/RoleUserState;->addRoleName(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    .end local v3    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 264
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 266
    .end local v1    # "changed":Z
    .end local v2    # "roleNamesSize":I
    :cond_4
    monitor-exit v0

    .line 267
    return-void

    .line 266
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
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 139
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    if-ne v1, p1, :cond_0

    .line 140
    monitor-exit v0

    return-void

    .line 142
    :cond_0
    iput p1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 143
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
