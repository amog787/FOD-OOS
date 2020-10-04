.class final Lcom/android/server/contentcapture/ContentCapturePerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "ContentCapturePerUserService.java"

# interfaces
.implements Lcom/android/server/contentcapture/RemoteContentCaptureService$ContentCaptureServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/contentcapture/ContentCapturePerUserService;",
        "Lcom/android/server/contentcapture/ContentCaptureManagerService;",
        ">;",
        "Lcom/android/server/contentcapture/RemoteContentCaptureService$ContentCaptureServiceCallbacks;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConditionsByPkg:Landroid/util/ArrayMap;
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
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/contentcapture/ContentCaptureServerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mZombie:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/Object;ZI)V
    .locals 2
    .param p1, "master"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "disabled"    # Z
    .param p4, "userId"    # I

    .line 124
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;-><init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;Lcom/android/server/contentcapture/ContentCapturePerUserService$1;)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    .line 125
    invoke-direct {p0, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 80
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method private assertCallerLocked(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 395
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 398
    .local v1, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .local v2, "packageUid":I
    nop

    .line 402
    if-eq v1, v2, :cond_1

    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 403
    invoke-virtual {v3, v1, p1}, Landroid/app/ActivityManagerInternal;->hasRunningActivity(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 404
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "callingPackage":Ljava/lang/String;
    :goto_0
    sget-object v5, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App (package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", UID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") passed package ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") owned by UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 411
    .end local v3    # "packages":[Ljava/lang/String;
    .end local v4    # "callingPackage":Ljava/lang/String;
    :cond_1
    return-void

    .line 399
    .end local v2    # "packageUid":I
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not verify UID for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getSession(Landroid/os/IBinder;)Lcom/android/server/contentcapture/ContentCaptureServerSession;
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 446
    .local v1, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    iget-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    return-object v1

    .line 444
    .end local v1    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSessionId(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 546
    .local v1, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v1, p1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->isActivitySession(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    return v2

    .line 544
    .end local v1    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private resetContentCaptureWhitelistLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 559
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetting content capture whitelist"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->resetWhitelist(I)V

    .line 562
    return-void
.end method

.method private resurrectSessionsLocked()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 213
    .local v0, "numSessions":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ressurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 220
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->resurrectLocked()V

    .line 218
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateRemoteServiceLocked(Z)V
    .locals 12
    .param p1, "disabled"    # Z

    .line 132
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRemoteService(disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateRemoteService(): destroying old remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->destroy()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 137
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resetContentCaptureWhitelistLocked()V

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    .line 143
    .local v0, "serviceComponentName":Landroid/content/ComponentName;
    if-nez v0, :cond_4

    .line 144
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRemoteService(): no service component name"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    return-void

    .line 148
    :cond_4
    if-nez p1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_5

    .line 150
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRemoteService(): creating new remote service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_5
    new-instance v11, Lcom/android/server/contentcapture/RemoteContentCaptureService;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    iget v6, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 155
    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isBindInstantServiceAllowed()Z

    move-result v8

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v9, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v10, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    const-string v3, "android.service.contentcapture.ContentCaptureService"

    move-object v1, v11

    move-object v4, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/contentcapture/RemoteContentCaptureService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/contentcapture/IContentCaptureServiceCallback;ILcom/android/server/contentcapture/ContentCapturePerUserService;ZZI)V

    iput-object v11, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 158
    :cond_6
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->destroy()V

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    .line 465
    return-void
.end method

.method destroySessionsLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 470
    .local v0, "numSessions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 472
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->destroyLocked(Z)V

    .line 470
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 475
    return-void
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 508
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Service Info: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    if-nez v1, :cond_0

    .line 513
    const-string v1, "N/A"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 516
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {v1, v0, p2}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 518
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Zombie: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 520
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-eqz v1, :cond_1

    .line 521
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "remote service:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 526
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "no sessions"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 529
    .local v1, "sessionsSize":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "number sessions: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 530
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 531
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 532
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 533
    .local v3, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v3, v0, p2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 534
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 530
    .end local v3    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 537
    .end local v1    # "sessionsSize":I
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method public finishSessionLocked(I)V
    .locals 4
    .param p1, "sessionId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 358
    .local v0, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    if-nez v0, :cond_2

    .line 359
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_1

    .line 360
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSession(): no session with id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1
    return-void

    .line 364
    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSession(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->removeSelfLocked(Z)V

    .line 366
    return-void
.end method

.method getContentCaptureConditionsLocked(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public getServiceSettingsActivityLocked()Landroid/content/ComponentName;
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 382
    :cond_0
    invoke-virtual {v0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "activityName":Ljava/lang/String;
    if-nez v0, :cond_1

    return-object v1

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {v1}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 386
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public isContentCaptureServiceForUserLocked(I)Z
    .locals 1
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceUidLocked()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method listSessionsLocked(Ljava/util/ArrayList;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 479
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 480
    .local v0, "numSessions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 482
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 163
    new-instance v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isTemporaryServiceSetLocked()Z

    move-result v2

    iget v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/service/contentcapture/ContentCaptureServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 165
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {v0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method onActivityEventLocked(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onActivityEvent(): no remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    return-void

    .line 499
    :cond_1
    new-instance v0, Landroid/service/contentcapture/ActivityEvent;

    invoke-direct {v0, p1, p2}, Landroid/service/contentcapture/ActivityEvent;-><init>(Landroid/content/ComponentName;I)V

    .line 501
    .local v0, "event":Landroid/service/contentcapture/ActivityEvent;
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v1, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivityLifecycleEvent(Landroid/service/contentcapture/ActivityEvent;)V

    .line 504
    return-void
.end method

.method onConnected()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v1, :cond_0

    .line 201
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot ressurect sessions because remote service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v0

    return-void

    .line 205
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    .line 206
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resurrectSessionsLocked()V

    .line 208
    :cond_1
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onPackageUpdatedLocked()V
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 237
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resurrectSessionsLocked()V

    .line 238
    return-void
.end method

.method onPackageUpdatingLocked()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 226
    .local v0, "numSessions":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessions while package is updating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 231
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->pauseLocked()V

    .line 229
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public onServiceDied(Lcom/android/server/contentcapture/RemoteContentCaptureService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 186
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote service died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onServiceDied(Lcom/android/server/contentcapture/RemoteContentCaptureService;)V

    return-void
.end method

.method public removeDataLocked(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    return-void

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/view/contentcapture/DataRemovalRequest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->assertCallerLocked(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 375
    return-void
.end method

.method public removeSessionLocked(I)V
    .locals 1
    .param p1, "sessionId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 435
    return-void
.end method

.method public sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 416
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getSessionId(Landroid/os/IBinder;)I

    move-result v0

    .line 417
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 419
    .local v1, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 420
    .local v2, "assistData":Landroid/os/Bundle;
    const-string/jumbo v3, "structure"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistStructure;

    .line 421
    .local v3, "assistStructure":Landroid/app/assist/AssistStructure;
    const-string v4, "content"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistContent;

    .line 422
    .local v4, "assistContent":Landroid/app/assist/AssistContent;
    new-instance v5, Landroid/service/contentcapture/SnapshotData;

    invoke-direct {v5, v2, v3, v4}, Landroid/service/contentcapture/SnapshotData;-><init>(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    .line 424
    .local v5, "snapshotData":Landroid/service/contentcapture/SnapshotData;
    invoke-virtual {v1, v5}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->sendActivitySnapshotLocked(Landroid/service/contentcapture/SnapshotData;)V

    .line 425
    const/4 v6, 0x1

    return v6

    .line 427
    .end local v1    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    .end local v2    # "assistData":Landroid/os/Bundle;
    .end local v3    # "assistStructure":Landroid/app/assist/AssistStructure;
    .end local v4    # "assistContent":Landroid/app/assist/AssistContent;
    .end local v5    # "snapshotData":Landroid/service/contentcapture/SnapshotData;
    :cond_0
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify activity assist data for activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v1, 0x0

    return v1
.end method

.method public startSessionLocked(Landroid/os/IBinder;Landroid/content/pm/ActivityPresentationInfo;IIILcom/android/internal/os/IResultReceiver;)V
    .locals 23
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "activityPresentationInfo"    # Landroid/content/pm/ActivityPresentationInfo;
    .param p3, "sessionId"    # I
    .param p4, "uid"    # I
    .param p5, "flags"    # I
    .param p6, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 244
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    const/4 v0, 0x0

    if-nez v13, :cond_0

    .line 245
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string v2, "basic activity info is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/16 v1, 0x104

    invoke-static {v15, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 248
    return-void

    .line 250
    :cond_0
    iget v10, v13, Landroid/content/pm/ActivityPresentationInfo;->taskId:I

    .line 251
    .local v10, "taskId":I
    iget v9, v13, Landroid/content/pm/ActivityPresentationInfo;->displayId:I

    .line 252
    .local v9, "displayId":I
    iget-object v8, v13, Landroid/content/pm/ActivityPresentationInfo;->componentName:Landroid/content/ComponentName;

    .line 253
    .local v8, "componentName":Landroid/content/ComponentName;
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v2, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    invoke-virtual {v1, v2, v8}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v3, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    .line 255
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {v1, v3, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v7, v1

    .line 256
    .local v7, "whiteListed":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v16

    .line 257
    .local v16, "serviceComponentName":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v17

    .line 258
    .local v17, "enabled":Z
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    if-eqz v1, :cond_4

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " a="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {v8}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " d="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-static/range {v16 .. v16}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " f="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    if-eqz v17, :cond_3

    const-string v3, ""

    goto :goto_2

    :cond_3
    const-string v3, " (disabled)"

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " w="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "historyItem":Ljava/lang/String;
    iget-object v3, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {v3, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 258
    .end local v1    # "historyItem":Ljava/lang/String;
    :cond_4
    move/from16 v6, p4

    move/from16 v5, p5

    .line 269
    :goto_3
    const/16 v1, 0x14

    if-nez v17, :cond_5

    .line 272
    invoke-static {v15, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 275
    const/4 v1, 0x3

    const/16 v2, 0x14

    const/16 v18, 0x0

    move/from16 v0, p3

    move-object/from16 v3, v16

    move-object v4, v8

    move/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 279
    return-void

    .line 281
    :cond_5
    const-string/jumbo v3, "startSession("

    if-nez v16, :cond_7

    .line 285
    iget-object v0, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_6

    .line 286
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): hold your horses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_6
    return-void

    .line 291
    :cond_7
    if-nez v7, :cond_9

    .line 292
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_8

    .line 293
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): package or component not whitelisted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_8
    const/16 v1, 0x204

    invoke-static {v15, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 299
    const/4 v1, 0x3

    const/16 v2, 0x204

    const/4 v5, 0x0

    move/from16 v0, p3

    move-object/from16 v3, v16

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 303
    return-void

    .line 306
    :cond_9
    iget-object v3, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 307
    .local v5, "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    const-string v3, ", token="

    const-string/jumbo v4, "startSession(id="

    if-eqz v5, :cond_a

    .line 308
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": ignoring because it already exists for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v1, 0xc

    invoke-static {v15, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 313
    const/4 v1, 0x3

    const/16 v2, 0xc

    const/16 v18, 0x0

    move/from16 v0, p3

    move-object/from16 v3, v16

    move-object v4, v8

    move-object v13, v5

    .end local v5    # "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    .local v13, "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    move/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 317
    return-void

    .line 320
    .end local v13    # "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    .restart local v5    # "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    :cond_a
    move-object v13, v5

    .end local v5    # "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    .restart local v13    # "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    iget-object v5, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v5, :cond_b

    .line 321
    invoke-direct {v11, v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 324
    :cond_b
    iget-object v2, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v2, :cond_c

    .line 325
    sget-object v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": ignoring because service is not set"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {v15, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 330
    const/4 v1, 0x3

    const/16 v2, 0x14

    const/4 v5, 0x0

    move/from16 v0, p3

    move-object/from16 v3, v16

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 334
    return-void

    .line 338
    :cond_c
    invoke-virtual {v2}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->ensureBoundLocked()V

    .line 340
    new-instance v18, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object v4, v8

    move-object/from16 v5, p6

    move v6, v10

    move/from16 v19, v7

    .end local v7    # "whiteListed":Z
    .local v19, "whiteListed":Z
    move v7, v9

    move-object/from16 v20, v8

    .end local v8    # "componentName":Landroid/content/ComponentName;
    .local v20, "componentName":Landroid/content/ComponentName;
    move/from16 v8, p3

    move/from16 v21, v9

    .end local v9    # "displayId":I
    .local v21, "displayId":I
    move/from16 v9, p4

    move/from16 v22, v10

    .end local v10    # "taskId":I
    .local v22, "taskId":I
    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/contentcapture/ContentCaptureServerSession;-><init>(Ljava/lang/Object;Landroid/os/IBinder;Lcom/android/server/contentcapture/ContentCapturePerUserService;Landroid/content/ComponentName;Lcom/android/internal/os/IResultReceiver;IIIII)V

    .line 343
    .local v0, "newSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v1, :cond_d

    .line 344
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSession(): new session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static/range {v20 .. v20}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_d
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v14, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    invoke-virtual {v0, v15}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->notifySessionStartedLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 349
    return-void
.end method

.method protected updateLocked(Z)Z
    .locals 4
    .param p1, "disabled"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 171
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 172
    .local v0, "disabledStateChanged":Z
    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->setContentCaptureEnabledLocked(Z)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroyLocked()V

    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 180
    return v0
.end method
