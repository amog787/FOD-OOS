.class public Lcom/android/server/backup/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/TransportManager$TransportDescription;
    }
.end annotation


# static fields
.field public static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BackupTransportManager"


# instance fields
.field private volatile mCurrentTransportName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation
.end field

.field private mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRegisteredTransportsDescriptionMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/TransportManager$TransportDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

.field private final mTransportLock:Ljava/lang/Object;

.field private final mTransportServiceIntent:Landroid/content/Intent;

.field private final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field private final mTransportWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "selectedTransport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 90
    .local p3, "whitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 69
    sget-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 91
    iput p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 92
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 93
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 94
    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {v0}, Lcom/android/server/backup/transport/TransportStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 96
    new-instance v0, Lcom/android/server/backup/transport/TransportClientManager;

    iget v1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/server/backup/transport/TransportClientManager;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    .line 97
    return-void
.end method

.method constructor <init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;Lcom/android/server/backup/transport/TransportClientManager;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "selectedTransport"    # Ljava/lang/String;
    .param p5, "transportClientManager"    # Lcom/android/server/backup/transport/TransportClientManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/transport/TransportClientManager;",
            ")V"
        }
    .end annotation

    .line 105
    .local p3, "whitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 69
    sget-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 106
    iput p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 107
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 108
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 109
    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {v0}, Lcom/android/server/backup/transport/TransportStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 111
    iput-object p5, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    .line 112
    return-void
.end method

.method private checkCanUseTransport()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 689
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 688
    const-string v1, "Can\'t call transport with transport lock held"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 690
    return-void
.end method

.method private static fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 701
    new-instance v0, Lcom/android/server/backup/-$$Lambda$TransportManager$_dxJobf45tWiMkaNlKY-z26kB2Q;

    invoke-direct {v0, p0}, Lcom/android/server/backup/-$$Lambda$TransportManager$_dxJobf45tWiMkaNlKY-z26kB2Q;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .line 381
    nop

    .line 382
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 383
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportDescription;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_0
    return-object v1
.end method

.method private getRegisteredTransportComponentOrThrowLocked(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 351
    .local v0, "transportComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 354
    return-object v0

    .line 352
    :cond_0
    new-instance v1, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {v1, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRegisteredTransportDescriptionLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .line 389
    nop

    .line 390
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 391
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportDescription;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportDescription;

    :goto_0
    return-object v1
.end method

.method private getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .locals 2
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 361
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 362
    .local v0, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    if-eqz v0, :cond_0

    .line 365
    return-object v0

    .line 363
    :cond_0
    new-instance v1, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {v1, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Landroid/content/ComponentName;)V

    throw v1
.end method

.method private getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v0

    .line 372
    .local v0, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    if-eqz v0, :cond_0

    .line 375
    return-object v0

    .line 373
    :cond_0
    new-instance v1, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {v1, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/TransportManager$TransportDescription;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 400
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportDescription;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 401
    .local v2, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    invoke-static {v2}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    return-object v1

    .line 404
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportDescription;>;"
    .end local v2    # "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    :cond_0
    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isTransportTrusted(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "transport"    # Landroid/content/ComponentName;

    .line 595
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BackupTransportManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackupTransport "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not whitelisted."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return v2

    .line 602
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 603
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 604
    .local v0, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not privileged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    return v2

    .line 612
    .end local v0    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    nop

    .line 613
    const/4 v0, 0x1

    return v0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Package not found."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    return v2
.end method

.method static synthetic lambda$fromPackageFilter$3(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "transportComponent"    # Landroid/content/ComponentName;

    .line 701
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "c"    # Ljava/lang/String;
    .param p1, "n"    # Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic lambda$onPackageAdded$1(Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "transportComponent"    # Landroid/content/ComponentName;

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$registerTransports$2(Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "transportComponent"    # Landroid/content/ComponentName;

    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method private registerTransport(Landroid/content/ComponentName;)I
    .locals 11
    .param p1, "transportComponent"    # Landroid/content/ComponentName;

    .line 627
    const-string v0, "Transport "

    const-string v1, "BackupTransportManager"

    invoke-direct {p0}, Lcom/android/server/backup/TransportManager;->checkCanUseTransport()V

    .line 629
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    const/4 v0, -0x2

    return v0

    .line 633
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "transportString":Ljava/lang/String;
    const-string v3, "TransportManager.registerTransport()"

    .line 636
    .local v3, "callerLogString":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 637
    .local v4, "extras":Landroid/os/Bundle;
    const/4 v5, 0x1

    const-string v6, "android.app.backup.extra.TRANSPORT_REGISTRATION"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    iget-object v5, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    .line 640
    invoke-virtual {v5, p1, v4, v3}, Lcom/android/server/backup/transport/TransportClientManager;->getTransportClient(Landroid/content/ComponentName;Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v5

    .line 644
    .local v5, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    :try_start_0
    invoke-virtual {v5, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    .local v6, "transport":Lcom/android/internal/backup/IBackupTransport;
    nop

    .line 653
    :try_start_1
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v7

    .line 654
    .local v7, "transportName":Ljava/lang/String;
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v8

    .line 655
    .local v8, "transportDirName":Ljava/lang/String;
    invoke-direct {p0, p1, v6}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;Lcom/android/internal/backup/IBackupTransport;)V

    .line 657
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " registered"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v9, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    invoke-interface {v9, v7, v8}, Lcom/android/server/backup/transport/OnTransportRegisteredListener;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 659
    const/4 v0, 0x0

    .line 663
    .end local v7    # "transportName":Ljava/lang/String;
    .end local v8    # "transportDirName":Ljava/lang/String;
    .local v0, "result":I
    goto :goto_0

    .line 660
    .end local v0    # "result":I
    :catch_0
    move-exception v7

    .line 661
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " died while registering"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v0, -0x1

    .line 665
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v0    # "result":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v1, v5, v3}, Lcom/android/server/backup/transport/TransportClientManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 666
    return v0

    .line 645
    .end local v0    # "result":I
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_1
    move-exception v0

    .line 646
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotAvailableException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t connect to transport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for registration"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v1, v5, v3}, Lcom/android/server/backup/transport/TransportClientManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 648
    const/4 v1, -0x1

    return v1
.end method

.method private registerTransport(Landroid/content/ComponentName;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 9
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 672
    invoke-direct {p0}, Lcom/android/server/backup/TransportManager;->checkCanUseTransport()V

    .line 674
    new-instance v8, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 676
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v3

    .line 679
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v4

    .line 680
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v5

    .line 681
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntentLabel()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/TransportManager$TransportDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;Lcom/android/server/backup/TransportManager$1;)V

    .line 682
    .local v0, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v1

    .line 683
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    monitor-exit v1

    .line 685
    return-void

    .line 684
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 579
    .local p2, "transportComponentFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 580
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 581
    .local v0, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 582
    return-void

    .line 584
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 585
    .local v2, "host":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 586
    .local v3, "transportComponent":Landroid/content/ComponentName;
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 587
    invoke-direct {p0, v3}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    invoke-direct {p0, v3}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    .line 590
    .end local v2    # "host":Landroid/content/pm/ResolveInfo;
    .end local v3    # "transportComponent":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 591
    :cond_2
    return-void
.end method

.method private registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 565
    .local p2, "transportComponentFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    nop

    .line 571
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 572
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 573
    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 571
    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/TransportManager;->registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V

    .line 574
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to register transports from package not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupTransportManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void
.end method


# virtual methods
.method public disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/transport/TransportClientManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public dumpTransportClients(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 693
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/transport/TransportClientManager;->dump(Ljava/io/PrintWriter;)V

    .line 694
    return-void
.end method

.method public dumpTransportStats(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 697
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/transport/TransportStats;->dump(Ljava/io/PrintWriter;)V

    .line 698
    return-void
.end method

.method public forEachRegisteredTransport(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p1, "transportConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 315
    .local v2, "transportDescription":Lcom/android/server/backup/TransportManager$TransportDescription;
    invoke-static {v2}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 316
    .end local v2    # "transportDescription":Lcom/android/server/backup/TransportManager$TransportDescription;
    goto :goto_0

    .line 317
    :cond_0
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .locals 2
    .param p1, "caller"    # Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No transport selected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .locals 2
    .param p1, "caller"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No transport selected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentTransportComponent()Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 198
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentOrThrowLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentTransportName()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    return-object v0
.end method

.method getRegisteredTransportComponents()[Landroid/content/ComponentName;
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 154
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 155
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    monitor-exit v0

    .line 153
    return-object v1

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRegisteredTransportNames()[Ljava/lang/String;
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 167
    .local v1, "transportNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 168
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 169
    .local v4, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    invoke-static {v4}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 170
    nop

    .end local v4    # "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    add-int/lit8 v2, v2, 0x1

    .line 171
    goto :goto_0

    .line 172
    :cond_0
    monitor-exit v0

    return-object v1

    .line 173
    .end local v1    # "transportNames":[Ljava/lang/String;
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .locals 3
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;

    .line 421
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupTransportManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .locals 3
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 442
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/backup/transport/TransportClientManager;->getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 443
    :cond_0
    new-instance v2, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {v2, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/backup/TransportManager;
    .end local p1    # "transportName":Ljava/lang/String;
    .end local p2    # "caller":Ljava/lang/String;
    throw v2

    .line 446
    .end local v1    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/backup/TransportManager;
    .restart local p1    # "transportName":Ljava/lang/String;
    .restart local p2    # "caller":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    .line 250
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$200(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    .line 249
    return-object v1

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    .line 263
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$300(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 262
    return-object v1

    .line 264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    .line 277
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$400(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    .line 276
    return-object v1

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    .line 291
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$500(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/CharSequence;

    move-result-object v1

    monitor-exit v0

    .line 290
    return-object v1

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    .line 225
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$100(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 224
    return-object v1

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransportDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$100(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTransportWhitelist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    return-object v0
.end method

.method public isTransportRegistered(Ljava/lang/String;)Z
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$4ND1hZMerK5gHU67okq6DZjKDQw;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$4ND1hZMerK5gHU67okq6DZjKDQw;

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 122
    return-void
.end method

.method varargs onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "components"    # [Ljava/lang/String;

    .line 134
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 135
    .local v0, "transportComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 136
    .local v3, "componentName":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v3    # "componentName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;

    invoke-direct {v3, v0}, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;-><init>(Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;

    invoke-direct {v1, v0}, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 142
    return-void

    .line 140
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method onPackageRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerAndSelectTransport(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "transportComponent"    # Landroid/content/ComponentName;

    .line 531
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    :try_start_1
    monitor-exit v0

    return v1

    .line 538
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 535
    :catch_0
    move-exception v2

    .line 538
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    move-result v2

    .line 542
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 543
    return v2

    .line 545
    :cond_0
    iget-object v3, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v3

    .line 547
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 548
    :try_start_3
    monitor-exit v3

    return v1

    .line 553
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 549
    :catch_1
    move-exception v0

    .line 550
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v1, "BackupTransportManager"

    const-string v4, "Transport got unregistered"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v1, -0x1

    monitor-exit v3

    return v1

    .line 553
    .end local v0    # "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 538
    .end local v2    # "result":I
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public registerTransports()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    sget-object v1, Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/TransportManager;->registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V

    .line 559
    return-void
.end method

.method selectTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 516
    .local v1, "prevTransport":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 517
    monitor-exit v0

    return-object v1

    .line 518
    .end local v1    # "prevTransport":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 116
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 117
    return-void
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 331
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 333
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 334
    .local v1, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    if-nez v1, :cond_0

    .line 335
    const-string v2, "BackupTransportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not registered tried to change description"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-exit v0

    return-void

    .line 338
    :cond_0
    invoke-static {v1, p2}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$002(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    invoke-static {v1, p3}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$202(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)Landroid/content/Intent;

    .line 340
    invoke-static {v1, p4}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$302(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    invoke-static {v1, p5}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$402(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)Landroid/content/Intent;

    .line 342
    invoke-static {v1, p6}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$502(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 343
    const-string v2, "BackupTransportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " updated its attributes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    nop

    .end local v1    # "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
