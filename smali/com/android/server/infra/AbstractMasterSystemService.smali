.class public abstract Lcom/android/server/infra/AbstractMasterSystemService;
.super Lcom/android/server/SystemService;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;,
        Lcom/android/server/infra/AbstractMasterSystemService$Visitor;,
        Lcom/android/server/infra/AbstractMasterSystemService$PackageUpdatePolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "TM;TS;>;S:",
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "TS;TM;>;>",
        "Lcom/android/server/SystemService;"
    }
.end annotation


# static fields
.field public static final PACKAGE_UPDATE_POLICY_NO_REFRESH:I = 0x0

.field public static final PACKAGE_UPDATE_POLICY_REFRESH_EAGER:I = 0x2

.field public static final PACKAGE_UPDATE_POLICY_REFRESH_LAZY:I = 0x1


# instance fields
.field public debug:Z

.field protected mAllowInstantService:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field private final mPackageUpdatePolicy:I

.field protected final mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

.field private final mServicesCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected final mTag:Ljava/lang/String;

.field private mUpdatingPackageNames:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public verbose:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceNameResolver"    # Lcom/android/server/infra/ServiceNameResolver;
    .param p3, "disallowProperty"    # Ljava/lang/String;

    .line 186
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 188
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceNameResolver"    # Lcom/android/server/infra/ServiceNameResolver;
    .param p3, "disallowProperty"    # Ljava/lang/String;
    .param p4, "packageUpdatePolicy"    # I

    .line 210
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 152
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    .line 212
    iput p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mPackageUpdatePolicy:I

    .line 214
    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 215
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v0, :cond_0

    .line 216
    new-instance v1, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$su3lJpEVIbL-C7doP4eboTpqjxU;

    invoke-direct {v1, p0}, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$su3lJpEVIbL-C7doP4eboTpqjxU;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    invoke-interface {v0, v1}, Lcom/android/server/infra/ServiceNameResolver;->setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V

    .line 220
    :cond_0
    if-nez p3, :cond_1

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    goto :goto_1

    .line 223
    :cond_1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    .line 225
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 226
    .local v0, "um":Landroid/os/UserManager;
    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 227
    .local v1, "umi":Landroid/os/UserManagerInternal;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 228
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 229
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 230
    .local v4, "userId":I
    invoke-virtual {v1, v4, p3}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v5

    .line 231
    .local v5, "disabled":Z
    if-eqz v5, :cond_2

    .line 232
    iget-object v6, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disabling by restrictions user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v6, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 228
    .end local v4    # "userId":I
    .end local v5    # "disabled":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$_fKw-VUP0pSfcMMlgRqoT4OPhxw;

    invoke-direct {v3, p0, p3}, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$_fKw-VUP0pSfcMMlgRqoT4OPhxw;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 254
    .end local v0    # "um":Landroid/os/UserManager;
    .end local v1    # "umi":Landroid/os/UserManagerInternal;
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->startTrackingPackageChanges()V

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/infra/AbstractMasterSystemService;

    .line 78
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/infra/AbstractMasterSystemService;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .line 78
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/infra/AbstractMasterSystemService;

    .line 78
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/infra/AbstractMasterSystemService;

    .line 78
    iget v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mPackageUpdatePolicy:I

    return v0
.end method

.method private startTrackingPackageChanges()V
    .locals 5

    .line 721
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    new-instance v0, Lcom/android/server/infra/AbstractMasterSystemService$1;

    invoke-direct {v0, p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    .line 847
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 848
    return-void
.end method


# virtual methods
.method protected final assertCalledByPackageOwner(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 657
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 659
    .local v0, "uid":I
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 661
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 662
    .local v4, "candidate":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 661
    .end local v4    # "candidate":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 665
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not own "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected clearCacheLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 648
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 649
    return-void
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 670
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 671
    .local v0, "realDebug":Z
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 672
    .local v1, "realVerbose":Z
    const-string v2, "    "

    .line 676
    .local v2, "prefix2":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    iput-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 677
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 678
    .local v3, "size":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Debug: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 679
    const-string v4, " Verbose: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 680
    const-string v4, "Refresh on package update: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mPackageUpdatePolicy:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 681
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    .line 682
    const-string v4, "Packages being updated: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 684
    :cond_0
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ": "

    const-string v6, "    "

    if-eqz v4, :cond_1

    .line 685
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Name resolver: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v4, p2}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 687
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 688
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 689
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 690
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 691
    .local v9, "userId":I
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget-object v10, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v10, p2, v9}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 689
    .end local v9    # "userId":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 695
    .end local v4    # "um":Landroid/os/UserManager;
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "i":I
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Users disabled by restriction: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 697
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Allow instant service: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 698
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, "settingsProperty":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 700
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Settings property: "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Cached services: "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    if-nez v3, :cond_3

    .line 704
    const-string/jumbo v5, "none"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 706
    :cond_3
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 707
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 708
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Service at "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    iget-object v8, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 710
    .local v8, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    invoke-virtual {v8, v6, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 711
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    .end local v8    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 715
    .end local v3    # "size":I
    .end local v4    # "settingsProperty":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 716
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 717
    nop

    .line 718
    return-void

    .line 715
    :catchall_0
    move-exception v3

    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 716
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    throw v3
.end method

.method protected enforceCallingPermissionForManagement()V
    .locals 3

    .line 441
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAllowInstantService()Z
    .locals 2

    .line 286
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 287
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    monitor-exit v0

    return v1

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .locals 3

    .line 411
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 7
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 495
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 497
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 498
    .local v1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-nez v1, :cond_1

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v2

    .line 500
    .local v2, "disabled":Z
    invoke-virtual {p0, v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 501
    if-nez v2, :cond_0

    .line 502
    invoke-virtual {p0, v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 504
    :cond_0
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 506
    .end local v2    # "disabled":Z
    :cond_1
    return-object v1
.end method

.method protected getServiceSettingsProperty()Ljava/lang/String;
    .locals 1

    .line 565
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isBindInstantServiceAllowed()Z
    .locals 2

    .line 301
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    monitor-exit v0

    return v1

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isDefaultServiceEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 398
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 400
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v1, p1}, Lcom/android/server/infra/ServiceNameResolver;->isDefaultServiceEnabled(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isDisabledLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 534
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$AbstractMasterSystemService(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "u"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "t"    # Z

    .line 217
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceNameChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$new$1$AbstractMasterSystemService(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "disallowProperty"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newRestrictions"    # Landroid/os/Bundle;
    .param p4, "prevRestrictions"    # Landroid/os/Bundle;

    .line 237
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    nop

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 239
    .local v0, "disabledNow":Z
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 241
    .local v2, "disabledBefore":Z
    if-ne v2, v0, :cond_0

    .line 243
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restriction did not change for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-exit v1

    return-void

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": disabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 250
    invoke-virtual {p0, p2, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 251
    nop

    .end local v2    # "disabledBefore":Z
    monitor-exit v1

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected abstract newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TS;"
        }
    .end annotation
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 259
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 260
    new-instance v0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/os/Handler;)V

    .line 262
    :cond_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 273
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .line 576
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .local p1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    return-void
.end method

.method protected onServiceNameChanged(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "isTemporary"    # Z

    .line 627
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 629
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onServicePackageUpdatedLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 605
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageUpdated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    return-void
.end method

.method protected onServicePackageUpdatingLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 598
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageUpdatingLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    return-void
.end method

.method protected onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .line 613
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .local p1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    return-void
.end method

.method protected onSettingsChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "property"    # Ljava/lang/String;

    .line 487
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 266
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 7
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 516
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 517
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 516
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 518
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/infra/AbstractPerUserSystemService;

    return-object v1
.end method

.method protected registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 477
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    return-void
.end method

.method protected final removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 586
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    .line 587
    .local v0, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v0, :cond_0

    .line 588
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 589
    invoke-virtual {p0, v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 591
    :cond_0
    return-object v0
.end method

.method public final resetTemporaryService(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 422
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetTemporaryService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 424
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 426
    .local v1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->resetTemporaryServiceLocked()V

    .line 429
    .end local v1    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    :cond_0
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setAllowInstantService(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .line 314
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowInstantService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 316
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 318
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setDefaultServiceEnabled(IZ)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 366
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultServiceEnabled() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 369
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/infra/ServiceNameResolver;->setDefaultServiceEnabled(IZ)Z

    move-result v1

    .line 371
    .local v1, "changed":Z
    if-nez v1, :cond_1

    .line 372
    iget-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultServiceEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 378
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 379
    .local v2, "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_2

    .line 380
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCacheLocked()V

    .line 384
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 385
    .end local v1    # "changed":Z
    .end local v2    # "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    monitor-exit v0

    .line 386
    const/4 v0, 0x1

    return v0

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setTemporaryService(ILjava/lang/String;I)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 335
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 339
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getMaximumTemporaryServiceDurationMs()I

    move-result v0

    .line 341
    .local v0, "maxDurationMs":I
    if-gt p3, v0, :cond_1

    .line 346
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 348
    .local v2, "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCacheLocked()V

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/infra/ServiceNameResolver;->setTemporaryService(ILjava/lang/String;I)V

    .line 352
    .end local v2    # "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 342
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max duration is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TS;"
        }
    .end annotation

    .line 546
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    .line 547
    .local v0, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 549
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 555
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected updateCachedServiceLocked(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 526
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 527
    return-void
.end method

.method protected visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/infra/AbstractMasterSystemService$Visitor<",
            "TS;>;)V"
        }
    .end annotation

    .line 637
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .local p1, "visitor":Lcom/android/server/infra/AbstractMasterSystemService$Visitor;, "Lcom/android/server/infra/AbstractMasterSystemService$Visitor<TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 638
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 639
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-interface {p1, v2}, Lcom/android/server/infra/AbstractMasterSystemService$Visitor;->visit(Ljava/lang/Object;)V

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
