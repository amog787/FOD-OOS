.class public Lcom/android/server/RescueParty$RescuePartyObserver;
.super Ljava/lang/Object;
.source "RescueParty.java"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RescueParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RescuePartyObserver"
.end annotation


# static fields
.field static sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;


# instance fields
.field private final mCallingPackageNamespaceSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mNamespaceCallingPackageSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    .line 439
    iput-object p1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    .line 440
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/RescueParty$RescuePartyObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 429
    invoke-direct {p0, p1, p2}, Lcom/android/server/RescueParty$RescuePartyObserver;->recordDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RescueParty$RescuePartyObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .line 429
    invoke-direct {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->getCallingPackagesSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RescueParty$RescuePartyObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .line 429
    invoke-direct {p0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->getAffectedNamespaceSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getAffectedNamespaceSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "failedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 550
    .end local p0    # "this":Lcom/android/server/RescueParty$RescuePartyObserver;
    .end local p1    # "failedPackage":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getCallingPackagesSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 554
    .end local p0    # "this":Lcom/android/server/RescueParty$RescuePartyObserver;
    .end local p1    # "namespace":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 444
    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-enter v0

    .line 445
    :try_start_0
    sget-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    if-nez v1, :cond_0

    .line 446
    new-instance v1, Lcom/android/server/RescueParty$RescuePartyObserver;

    invoke-direct {v1, p0}, Lcom/android/server/RescueParty$RescuePartyObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 448
    :cond_0
    sget-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-exit v0

    return-object v1

    .line 449
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized recordDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 535
    .local v0, "namespaceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 536
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 537
    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .end local p0    # "this":Lcom/android/server/RescueParty$RescuePartyObserver;
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 542
    .local v1, "callingPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 543
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 545
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v2, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 533
    .end local v0    # "namespaceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "callingPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "namespace":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static reset()V
    .locals 2

    .line 454
    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-enter v0

    .line 455
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 456
    monitor-exit v0

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public execute(Landroid/content/pm/VersionedPackage;I)Z
    .locals 3
    .param p1, "failedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "failureReason"    # I

    .line 473
    invoke-static {}, Lcom/android/server/RescueParty;->access$400()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 474
    return v1

    .line 476
    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 484
    :cond_1
    return v1

    .line 478
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/RescueParty;->access$700(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 479
    .local v0, "triggerUid":I
    invoke-static {v0}, Lcom/android/server/RescueParty;->access$800(I)V

    .line 480
    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    .line 481
    if-nez p1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 480
    :goto_1
    invoke-static {v1, v2}, Lcom/android/server/RescueParty;->access$900(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    const/4 v1, 0x1

    return v1
.end method

.method public executeBootLoopMitigation()Z
    .locals 2

    .line 518
    invoke-static {}, Lcom/android/server/RescueParty;->access$400()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 519
    return v1

    .line 521
    :cond_0
    invoke-static {v1}, Lcom/android/server/RescueParty;->access$800(I)V

    .line 522
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/RescueParty;->access$900(Landroid/content/Context;Ljava/lang/String;)V

    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 528
    const-string/jumbo v0, "rescue-party-observer"

    return-object v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public mayObservePackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 498
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 499
    return v3

    .line 501
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 502
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x9

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 503
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 504
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public onBootLoop()I
    .locals 1

    .line 510
    invoke-static {}, Lcom/android/server/RescueParty;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x0

    return v0

    .line 513
    :cond_0
    invoke-static {}, Lcom/android/server/RescueParty;->access$500()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->access$600(I)I

    move-result v0

    return v0
.end method

.method public onHealthCheckFailed(Landroid/content/pm/VersionedPackage;I)I
    .locals 1
    .param p1, "failedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "failureReason"    # I

    .line 462
    invoke-static {}, Lcom/android/server/RescueParty;->access$400()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 464
    :cond_0
    invoke-static {}, Lcom/android/server/RescueParty;->access$500()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->access$600(I)I

    move-result v0

    return v0

    .line 466
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
