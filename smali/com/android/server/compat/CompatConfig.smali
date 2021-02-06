.class final Lcom/android/server/compat/CompatConfig;
.super Ljava/lang/Object;
.source "CompatConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompatConfig"


# instance fields
.field private final mChanges:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/compat/CompatChange;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideValidator:Lcom/android/internal/compat/IOverrideValidator;


# direct methods
.method constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V
    .locals 1
    .param p1, "androidBuildClassifier"    # Lcom/android/internal/compat/AndroidBuildClassifier;
    .param p2, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    .line 72
    new-instance v0, Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/compat/OverrideValidatorImpl;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/internal/compat/IOverrideValidator;

    .line 73
    return-void
.end method

.method static create(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)Lcom/android/server/compat/CompatConfig;
    .locals 8
    .param p0, "androidBuildClassifier"    # Lcom/android/internal/compat/AndroidBuildClassifier;
    .param p1, "context"    # Landroid/content/Context;

    .line 463
    new-instance v0, Lcom/android/server/compat/CompatConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/compat/CompatConfig;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V

    .line 464
    .local v0, "config":Lcom/android/server/compat/CompatConfig;
    nop

    .line 465
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc"

    const-string v3, "compatconfig"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-static {v1, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 466
    nop

    .line 467
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "system_ext"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 466
    invoke-static {v1, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 469
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v1

    .line 470
    .local v1, "apexes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexManager$ActiveApexInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 471
    .local v5, "apex":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    iget-object v6, v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 473
    .end local v5    # "apex":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    goto :goto_0

    .line 474
    :cond_0
    invoke-direct {v0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 475
    return-object v0
.end method

.method private getAllowedChangesAfterTargetSdkForPackage(Ljava/lang/String;I)[J
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 325
    .local v0, "allowed":Landroid/util/LongArray;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 326
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v3, :cond_2

    .line 328
    :try_start_1
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 329
    .local v3, "change":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getEnableAfterTargetSdk()I

    move-result v4

    if-eq v4, p2, :cond_0

    .line 330
    goto :goto_1

    .line 332
    :cond_0
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/internal/compat/IOverrideValidator;

    .line 333
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6, p1}, Lcom/android/internal/compat/IOverrideValidator;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v4

    .line 335
    .local v4, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    iget v5, v4, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    if-nez v5, :cond_1

    .line 336
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/util/LongArray;->add(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .end local v3    # "change":Lcom/android/server/compat/CompatChange;
    .end local v4    # "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    :cond_1
    nop

    .line 326
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v3

    .line 340
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to call override validator!"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "allowed":Landroid/util/LongArray;
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "targetSdkVersion":I
    throw v4

    .line 343
    .end local v2    # "i":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "allowed":Landroid/util/LongArray;
    .restart local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "targetSdkVersion":I
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    return-object v1

    .line 343
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private invalidateCache()V
    .locals 0

    .line 506
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 507
    return-void
.end method

.method private readConfig(Ljava/io/File;)V
    .locals 6
    .param p1, "configFile"    # Ljava/io/File;

    .line 491
    const-string v0, "CompatConfig"

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/compat/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/config/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/compat/config/Config;->getCompatChange()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/config/Change;

    .line 493
    .local v3, "change":Lcom/android/server/compat/config/Change;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v4, Lcom/android/server/compat/CompatChange;

    invoke-direct {v4, v3}, Lcom/android/server/compat/CompatChange;-><init>(Lcom/android/server/compat/config/Change;)V

    invoke-virtual {p0, v4}, Lcom/android/server/compat/CompatConfig;->addChange(Lcom/android/server/compat/CompatChange;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    .end local v3    # "change":Lcom/android/server/compat/config/Change;
    goto :goto_0

    .line 496
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 498
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 491
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .end local p1    # "configFile":Ljava/io/File;
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 496
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .restart local p1    # "configFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Encountered an error while reading/parsing compat config file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method addChange(Lcom/android/server/compat/CompatChange;)V
    .locals 4
    .param p1, "change"    # Lcom/android/server/compat/CompatChange;

    .line 82
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addOverride(JLjava/lang/String;Z)Z
    .locals 5
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x1

    .line 166
    .local v0, "alreadyKnown":Z
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/internal/compat/IOverrideValidator;

    .line 167
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/compat/IOverrideValidator;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v1

    .line 168
    .local v1, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 171
    .local v3, "c":Lcom/android/server/compat/CompatChange;
    if-nez v3, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 173
    new-instance v4, Lcom/android/server/compat/CompatChange;

    invoke-direct {v4, p1, p2}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    move-object v3, v4

    .line 174
    invoke-virtual {p0, v3}, Lcom/android/server/compat/CompatConfig;->addChange(Lcom/android/server/compat/CompatChange;)V

    .line 176
    :cond_0
    invoke-virtual {v3, p3, p4}, Lcom/android/server/compat/CompatChange;->addPackageOverride(Ljava/lang/String;Z)V

    .line 177
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 178
    .end local v3    # "c":Lcom/android/server/compat/CompatChange;
    monitor-exit v2

    .line 179
    return v0

    .line 178
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method addOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .locals 6
    .param p1, "overrides"    # Lcom/android/internal/compat/CompatibilityChangeConfig;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 278
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 279
    .local v2, "changeId":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, p2, v5}, Lcom/android/server/compat/CompatConfig;->addOverride(JLjava/lang/String;Z)Z

    .line 280
    nop

    .end local v2    # "changeId":Ljava/lang/Long;
    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 282
    .restart local v2    # "changeId":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, p2, v5}, Lcom/android/server/compat/CompatConfig;->addOverride(JLjava/lang/String;Z)Z

    .line 284
    nop

    .end local v2    # "changeId":Ljava/lang/Long;
    goto :goto_1

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearChanges()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 396
    monitor-exit v0

    .line 397
    return-void

    .line 396
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disableTargetSdkChangesForPackage(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesAfterTargetSdkForPackage(Ljava/lang/String;I)[J

    move-result-object v0

    .line 372
    .local v0, "changes":[J
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, v0, v3

    .line 373
    .local v4, "changeId":J
    invoke-virtual {p0, v4, v5, p1, v2}, Lcom/android/server/compat/CompatConfig;->addOverride(JLjava/lang/String;Z)Z

    .line 372
    .end local v4    # "changeId":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    :cond_0
    array-length v1, v0

    return v1
.end method

.method dumpChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .locals 12

    .line 447
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 449
    .local v1, "changeInfos":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 450
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 451
    .local v3, "change":Lcom/android/server/compat/CompatChange;
    new-instance v11, Lcom/android/internal/compat/CompatibilityChangeInfo;

    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 452
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getName()Ljava/lang/String;

    move-result-object v6

    .line 453
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getEnableAfterTargetSdk()I

    move-result v7

    .line 454
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v8

    .line 455
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v9

    .line 456
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getDescription()Ljava/lang/String;

    move-result-object v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;IZZLjava/lang/String;)V

    aput-object v11, v1, v2

    .line 449
    .end local v3    # "change":Lcom/android/server/compat/CompatChange;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 459
    .end local v1    # "changeInfos":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpConfig(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 405
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 407
    const-string v1, "No compat overrides."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    monitor-exit v0

    return-void

    .line 410
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 412
    .local v2, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    .end local v2    # "c":Lcom/android/server/compat/CompatChange;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method enableTargetSdkChangesForPackage(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesAfterTargetSdkForPackage(Ljava/lang/String;I)[J

    move-result-object v0

    .line 356
    .local v0, "changes":[J
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 357
    .local v3, "changeId":J
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, p1, v5}, Lcom/android/server/compat/CompatConfig;->addOverride(JLjava/lang/String;Z)Z

    .line 356
    .end local v3    # "changeId":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_0
    array-length v1, v0

    return v1
.end method

.method getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .locals 7
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 426
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 427
    .local v0, "enabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 428
    .local v1, "disabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v2

    .line 429
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 430
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/CompatChange;

    .line 431
    .local v4, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v4, p1}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    invoke-virtual {v4}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 434
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v4    # "c":Lcom/android/server/compat/CompatChange;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    .end local v3    # "i":I
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v3, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v3, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v3}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    return-object v2

    .line 437
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J
    .locals 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 98
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 99
    .local v0, "disabled":Landroid/util/LongArray;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 100
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 102
    .local v3, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v3, p1}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongArray;->add(J)V

    .line 100
    .end local v3    # "c":Lcom/android/server/compat/CompatChange;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    return-object v1

    .line 106
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/internal/compat/IOverrideValidator;

    return-object v0
.end method

.method initConfigFromLib(Ljava/io/File;)V
    .locals 7
    .param p1, "libraryDir"    # Ljava/io/File;

    .line 479
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "CompatConfig"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 483
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 484
    .local v4, "f":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a config file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-direct {p0, v4}, Lcom/android/server/compat/CompatConfig;->readConfig(Ljava/io/File;)V

    .line 483
    .end local v4    # "f":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    :cond_1
    return-void

    .line 480
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skipping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "changeId"    # J
    .param p3, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 138
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 140
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-nez v1, :cond_0

    .line 142
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 144
    :cond_0
    invoke-virtual {v1, p3}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 145
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isDisabled(J)Z
    .locals 3
    .param p1, "changeId"    # J

    .line 225
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 227
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-nez v1, :cond_0

    .line 228
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 230
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 231
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isKnownChangeId(J)Z
    .locals 3
    .param p1, "changeId"    # J

    .line 188
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 190
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 191
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isLoggingOnly(J)Z
    .locals 3
    .param p1, "changeId"    # J

    .line 212
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 214
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-nez v1, :cond_0

    .line 215
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 217
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 218
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method lookupChangeId(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 126
    const-wide/16 v0, -0x1

    return-wide v0

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method minTargetSdkForChangeId(J)I
    .locals 3
    .param p1, "changeId"    # J

    .line 199
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 201
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-nez v1, :cond_0

    .line 202
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 204
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->getEnableAfterTargetSdk()I

    move-result v2

    monitor-exit v0

    return v2

    .line 205
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z
    .locals 4
    .param p1, "changeId"    # J
    .param p3, "listener"    # Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 379
    const/4 v0, 0x1

    .line 380
    .local v0, "alreadyKnown":Z
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 382
    .local v2, "c":Lcom/android/server/compat/CompatChange;
    if-nez v2, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 384
    new-instance v3, Lcom/android/server/compat/CompatChange;

    invoke-direct {v3, p1, p2}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    move-object v2, v3

    .line 385
    invoke-virtual {p0, v2}, Lcom/android/server/compat/CompatConfig;->addChange(Lcom/android/server/compat/CompatChange;)V

    .line 387
    :cond_0
    invoke-virtual {v2, p3}, Lcom/android/server/compat/CompatChange;->registerListener(Lcom/android/server/compat/CompatChange$ChangeListener;)V

    .line 388
    .end local v2    # "c":Lcom/android/server/compat/CompatChange;
    monitor-exit v1

    .line 389
    return v0

    .line 388
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removeOverride(JLjava/lang/String;)Z
    .locals 6
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "overrideExists":Z
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .local v2, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v2, :cond_0

    .line 250
    :try_start_1
    invoke-virtual {v2, p3}, Lcom/android/server/compat/CompatChange;->hasOverride(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 251
    if-eqz v0, :cond_0

    .line 252
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/internal/compat/IOverrideValidator;

    .line 253
    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/compat/IOverrideValidator;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v3

    .line 254
    .local v3, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 255
    invoke-virtual {v2, p3}, Lcom/android/server/compat/CompatChange;->removePackageOverride(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    .end local v3    # "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    :catch_0
    move-exception v3

    .line 260
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to call override validator!"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "overrideExists":Z
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .end local p1    # "changeId":J
    .end local p3    # "packageName":Ljava/lang/String;
    throw v4

    .line 261
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "overrideExists":Z
    .restart local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .restart local p1    # "changeId":J
    .restart local p3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    nop

    .line 262
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 263
    .end local v2    # "c":Lcom/android/server/compat/CompatChange;
    monitor-exit v1

    .line 264
    return v0

    .line 263
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method removePackageOverrides(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v2, :cond_1

    .line 302
    :try_start_1
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 303
    .local v2, "change":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v2, p1}, Lcom/android/server/compat/CompatChange;->hasOverride(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/internal/compat/IOverrideValidator;

    .line 305
    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p1}, Lcom/android/internal/compat/IOverrideValidator;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v3

    .line 307
    .local v3, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 308
    if-eqz v2, :cond_0

    .line 309
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/CompatChange;

    invoke-virtual {v4, p1}, Lcom/android/server/compat/CompatChange;->removePackageOverride(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    .end local v2    # "change":Lcom/android/server/compat/CompatChange;
    .end local v3    # "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    :cond_0
    nop

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to call override validator!"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v3

    .line 317
    .end local v1    # "i":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 318
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
