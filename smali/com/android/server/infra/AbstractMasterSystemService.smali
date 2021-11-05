.class public abstract Lcom/android/server/infra/AbstractMasterSystemService;
.super Lcom/android/server/SystemService;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;,
        Lcom/android/server/infra/AbstractMasterSystemService$Visitor;,
        Lcom/android/server/infra/AbstractMasterSystemService$ServicePackagePolicyFlags;
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
.field public static final PACKAGE_RESTART_POLICY_NO_REFRESH:I = 0x10

.field public static final PACKAGE_RESTART_POLICY_REFRESH_EAGER:I = 0x40

.field public static final PACKAGE_RESTART_POLICY_REFRESH_LAZY:I = 0x20

.field public static final PACKAGE_UPDATE_POLICY_NO_REFRESH:I = 0x1

.field public static final PACKAGE_UPDATE_POLICY_REFRESH_EAGER:I = 0x4

.field public static final PACKAGE_UPDATE_POLICY_REFRESH_LAZY:I = 0x2


# instance fields
.field public debug:Z

.field protected mAllowInstantService:Z

.field private final mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

.field protected final mLock:Ljava/lang/Object;

.field protected final mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

.field private final mServicePackagePolicyFlags:I

.field private final mServicesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected final mTag:Ljava/lang/String;

.field private mUm:Landroid/os/UserManagerInternal;

.field private mUpdatingPackageNames:Landroid/util/SparseArray;
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

    .line 211
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceNameResolver"    # Lcom/android/server/infra/ServiceNameResolver;
    .param p3, "disallowProperty"    # Ljava/lang/String;
    .param p4, "servicePackagePolicyFlags"    # I

    .line 236
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 173
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    .line 238
    const/4 v0, 0x7

    .line 240
    .local v0, "updatePolicyMask":I
    and-int/lit8 v1, p4, 0x7

    if-nez v1, :cond_0

    .line 242
    or-int/lit8 p4, p4, 0x2

    .line 244
    :cond_0
    const/16 v1, 0x70

    .line 246
    .local v1, "restartPolicyMask":I
    and-int/lit8 v2, p4, 0x70

    if-nez v2, :cond_1

    .line 248
    or-int/lit8 p4, p4, 0x20

    .line 250
    :cond_1
    iput p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    .line 252
    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 253
    if-eqz p2, :cond_2

    .line 254
    new-instance v2, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$su3lJpEVIbL-C7doP4eboTpqjxU;

    invoke-direct {v2, p0}, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$su3lJpEVIbL-C7doP4eboTpqjxU;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    invoke-interface {p2, v2}, Lcom/android/server/infra/ServiceNameResolver;->setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V

    .line 258
    :cond_2
    if-nez p3, :cond_3

    .line 259
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    goto :goto_1

    .line 261
    :cond_3
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    .line 263
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    .line 264
    .local v2, "umi":Landroid/os/UserManagerInternal;
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object v3

    .line 265
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 266
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 267
    .local v5, "userId":I
    invoke-virtual {v2, v5, p3}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v6

    .line 268
    .local v6, "disabled":Z
    if-eqz v6, :cond_4

    .line 269
    iget-object v7, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Disabling by restrictions user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v7, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 265
    .end local v5    # "userId":I
    .end local v6    # "disabled":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    .end local v4    # "i":I
    :cond_5
    new-instance v4, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$_fKw-VUP0pSfcMMlgRqoT4OPhxw;

    invoke-direct {v4, p0, p3}, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$_fKw-VUP0pSfcMMlgRqoT4OPhxw;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 291
    .end local v2    # "umi":Landroid/os/UserManagerInternal;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->startTrackingPackageChanges()V

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/infra/AbstractMasterSystemService;

    .line 79
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/infra/AbstractMasterSystemService;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .line 79
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/infra/AbstractMasterSystemService;

    .line 79
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/infra/AbstractMasterSystemService;

    .line 79
    iget v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    return v0
.end method

.method private startTrackingPackageChanges()V
    .locals 5

    .line 802
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    new-instance v0, Lcom/android/server/infra/AbstractMasterSystemService$1;

    invoke-direct {v0, p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    .line 1006
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1007
    return-void
.end method


# virtual methods
.method protected final assertCalledByPackageOwner(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 738
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 740
    .local v0, "uid":I
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 742
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 743
    .local v4, "candidate":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 742
    .end local v4    # "candidate":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 746
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

    .line 699
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 700
    return-void
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 751
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 752
    .local v0, "realDebug":Z
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 753
    .local v1, "realVerbose":Z
    const-string v2, "    "

    .line 757
    .local v2, "prefix2":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    iput-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 758
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 759
    .local v3, "size":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Debug: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 760
    const-string v4, " Verbose: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 761
    const-string v4, "Package policy flags: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 762
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    .line 763
    const-string v4, "Packages being updated: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 765
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpSupportedUsers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 766
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ": "

    const-string v6, "    "

    if-eqz v4, :cond_1

    .line 767
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Name resolver: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v4, p2}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 769
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object v4

    .line 770
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 771
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 772
    .local v8, "userId":I
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    iget-object v9, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v9, p2, v8}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 770
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 776
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Users disabled by restriction: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 778
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Allow instant service: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 779
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v4

    .line 780
    .local v4, "settingsProperty":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 781
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Settings property: "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Cached services: "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 784
    if-nez v3, :cond_3

    .line 785
    const-string/jumbo v5, "none"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 787
    :cond_3
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 788
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 789
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Service at "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    iget-object v8, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 791
    .local v8, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    invoke-virtual {v8, v6, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 792
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    .end local v8    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 796
    .end local v3    # "size":I
    .end local v4    # "settingsProperty":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 797
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 798
    nop

    .line 799
    return-void

    .line 796
    :catchall_0
    move-exception v3

    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 797
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 798
    throw v3
.end method

.method protected enforceCallingPermissionForManagement()V
    .locals 3

    .line 478
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

    .line 323
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 324
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    monitor-exit v0

    return v1

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .locals 3

    .line 448
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 532
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 532
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 534
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 535
    .local v1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-nez v1, :cond_1

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v2

    .line 537
    .local v2, "disabled":Z
    invoke-virtual {p0, v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 538
    if-nez v2, :cond_0

    .line 539
    invoke-virtual {p0, v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 541
    :cond_0
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 543
    .end local v2    # "disabled":Z
    :cond_1
    return-object v1
.end method

.method protected getServiceSettingsProperty()Ljava/lang/String;
    .locals 1

    .line 602
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSupportedUsers()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 720
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 721
    .local v0, "allUsers":[Landroid/content/pm/UserInfo;
    array-length v1, v0

    .line 722
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 723
    .local v2, "supportedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 724
    aget-object v4, v0, v3

    .line 725
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v5, Lcom/android/server/SystemService$TargetUser;

    invoke-direct {v5, v4}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-virtual {p0, v5}, Lcom/android/server/infra/AbstractMasterSystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 726
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 729
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method protected getUserManagerInternal()Landroid/os/UserManagerInternal;
    .locals 2

    .line 707
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_1

    .line 708
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "lazy-loading UserManagerInternal"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Landroid/os/UserManagerInternal;

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method public final isBindInstantServiceAllowed()Z
    .locals 2

    .line 338
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    monitor-exit v0

    return v1

    .line 340
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

    .line 435
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 437
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v1, p1}, Lcom/android/server/infra/ServiceNameResolver;->isDefaultServiceEnabled(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 439
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

    .line 571
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

    .line 255
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

    .line 274
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    nop

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 276
    .local v0, "disabledNow":Z
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 278
    .local v2, "disabledBefore":Z
    if-ne v2, v0, :cond_0

    .line 280
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restriction did not change for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    monitor-exit v1

    return-void

    .line 285
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

    .line 286
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 287
    invoke-virtual {p0, p2, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 288
    nop

    .end local v2    # "disabledBefore":Z
    monitor-exit v1

    .line 289
    return-void

    .line 288
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

    .line 296
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 297
    new-instance v0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/os/Handler;)V

    .line 299
    :cond_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 310
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
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

    .line 613
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .local p1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    return-void
.end method

.method protected onServiceNameChanged(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "isTemporary"    # Z

    .line 678
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 680
    monitor-exit v0

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onServicePackageDataClearedLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 649
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageDataCleared("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    return-void
.end method

.method protected onServicePackageRestartedLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 656
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageRestarted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    return-void
.end method

.method protected onServicePackageUpdatedLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 642
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

    .line 643
    :cond_0
    return-void
.end method

.method protected onServicePackageUpdatingLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 635
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

    .line 636
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

    .line 664
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .local p1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    return-void
.end method

.method protected onSettingsChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "property"    # Ljava/lang/String;

    .line 524
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 303
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 305
    monitor-exit v0

    .line 306
    return-void

    .line 305
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 553
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 553
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 555
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

    .line 514
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    return-void
.end method

.method protected final removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 623
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    .line 624
    .local v0, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v0, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 626
    invoke-virtual {p0, v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 628
    :cond_0
    return-object v0
.end method

.method public final resetTemporaryService(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 459
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

    .line 460
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 461
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 463
    .local v1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->resetTemporaryServiceLocked()V

    .line 466
    .end local v1    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    :cond_0
    monitor-exit v0

    .line 467
    return-void

    .line 466
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

    .line 351
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

    .line 352
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 353
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 355
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

    .line 403
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

    .line 404
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 406
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/infra/ServiceNameResolver;->setDefaultServiceEnabled(IZ)Z

    move-result v1

    .line 408
    .local v1, "changed":Z
    if-nez v1, :cond_1

    .line 409
    iget-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v2, :cond_0

    .line 410
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

    .line 412
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 415
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 416
    .local v2, "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_2

    .line 417
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCacheLocked()V

    .line 421
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 422
    .end local v1    # "changed":Z
    .end local v2    # "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    monitor-exit v0

    .line 423
    const/4 v0, 0x1

    return v0

    .line 422
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

    .line 372
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

    .line 374
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 376
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getMaximumTemporaryServiceDurationMs()I

    move-result v0

    .line 378
    .local v0, "maxDurationMs":I
    if-gt p3, v0, :cond_1

    .line 383
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 385
    .local v2, "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCacheLocked()V

    .line 388
    :cond_0
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/infra/ServiceNameResolver;->setTemporaryService(ILjava/lang/String;I)V

    .line 389
    .end local v2    # "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 379
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TS;"
        }
    .end annotation

    .line 583
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    .line 584
    .local v0, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v0, :cond_1

    .line 585
    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 586
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 592
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected updateCachedServiceLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 563
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 564
    return-void
.end method

.method protected visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/infra/AbstractMasterSystemService$Visitor<",
            "TS;>;)V"
        }
    .end annotation

    .line 688
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .local p1, "visitor":Lcom/android/server/infra/AbstractMasterSystemService$Visitor;, "Lcom/android/server/infra/AbstractMasterSystemService$Visitor<TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 689
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 690
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-interface {p1, v2}, Lcom/android/server/infra/AbstractMasterSystemService$Visitor;->visit(Ljava/lang/Object;)V

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
