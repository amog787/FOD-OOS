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

.field mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

.field private final mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/contentcapture/ContentCaptureServerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
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

    .line 126
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;-><init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;Lcom/android/server/contentcapture/ContentCapturePerUserService$1;)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    .line 127
    invoke-direct {p0, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 82
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method private assertCallerLocked(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 406
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 407
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 410
    .local v1, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .local v2, "packageUid":I
    nop

    .line 414
    if-eq v1, v2, :cond_1

    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 415
    invoke-virtual {v3, v1, p1}, Landroid/app/ActivityManagerInternal;->hasRunningActivity(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 417
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

    .line 418
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

    .line 421
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

    .line 423
    .end local v3    # "packages":[Ljava/lang/String;
    .end local v4    # "callingPackage":Ljava/lang/String;
    :cond_1
    return-void

    .line 411
    .end local v2    # "packageUid":I
    :catch_0
    move-exception v2

    .line 412
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

    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 466
    .local v1, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    iget-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    return-object v1

    .line 464
    .end local v1    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSessionId(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 566
    .local v1, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v1, p1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->isActivitySession(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    return v2

    .line 564
    .end local v1    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private resetContentCaptureWhitelistLocked()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetting content capture whitelist"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->resetWhitelist(I)V

    .line 582
    return-void
.end method

.method private resurrectSessionsLocked()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 215
    .local v0, "numSessions":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_0

    .line 216
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

    .line 220
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 221
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 222
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->resurrectLocked()V

    .line 220
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateRemoteServiceLocked(Z)V
    .locals 12
    .param p1, "disabled"    # Z

    .line 134
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

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateRemoteService(): destroying old remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->destroy()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resetContentCaptureWhitelistLocked()V

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    .line 145
    .local v0, "serviceComponentName":Landroid/content/ComponentName;
    if-nez v0, :cond_4

    .line 146
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRemoteService(): no service component name"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3
    return-void

    .line 150
    :cond_4
    if-nez p1, :cond_6

    .line 151
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_5

    .line 152
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRemoteService(): creating new remote service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
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

    .line 157
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

    .line 160
    :cond_6
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->destroy()V

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    .line 485
    return-void
.end method

.method destroySessionsLocked()V
    .locals 4

    .line 489
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 490
    .local v0, "numSessions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 491
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 492
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->destroyLocked(Z)V

    .line 490
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 495
    return-void
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 528
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Service Info: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    if-nez v1, :cond_0

    .line 533
    const-string v1, "N/A"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 536
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {v1, v0, p2}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 538
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Zombie: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 540
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "remote service:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 546
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "no sessions"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 549
    .local v1, "sessionsSize":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "number sessions: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 550
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 551
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 552
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 553
    .local v3, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v3, v0, p2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 554
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 550
    .end local v3    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 557
    .end local v1    # "sessionsSize":I
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method public finishSessionLocked(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .line 355
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 360
    .local v0, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    if-nez v0, :cond_2

    .line 361
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_1

    .line 362
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSession(): no session with id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    return-void

    .line 366
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

    .line 367
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->removeSelfLocked(Z)V

    .line 368
    return-void
.end method

.method getContentCaptureConditionsLocked(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
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

    .line 510
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public getServiceSettingsActivityLocked()Landroid/content/ComponentName;
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 394
    :cond_0
    invoke-virtual {v0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "activityName":Ljava/lang/String;
    if-nez v0, :cond_1

    return-object v1

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {v1}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 398
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public isContentCaptureServiceForUserLocked(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 459
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 499
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 500
    .local v0, "numSessions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 501
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 502
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
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

    .line 165
    new-instance v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isTemporaryServiceSetLocked()Z

    move-result v2

    iget v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/service/contentcapture/ContentCaptureServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 167
    invoke-virtual {v0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method onActivityEventLocked(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .line 515
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onActivityEvent(): no remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    return-void

    .line 519
    :cond_1
    new-instance v0, Landroid/service/contentcapture/ActivityEvent;

    invoke-direct {v0, p1, p2}, Landroid/service/contentcapture/ActivityEvent;-><init>(Landroid/content/ComponentName;I)V

    .line 521
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

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v1, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivityLifecycleEvent(Landroid/service/contentcapture/ActivityEvent;)V

    .line 524
    return-void
.end method

.method onConnected()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v1, :cond_0

    .line 203
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot ressurect sessions because remote service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-exit v0

    return-void

    .line 207
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    .line 208
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resurrectSessionsLocked()V

    .line 210
    :cond_1
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDataSharedLocked(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V
    .locals 1
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "dataShareCallback"    # Landroid/service/contentcapture/IDataShareCallback$Stub;

    .line 382
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->assertCallerLocked(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V

    .line 387
    return-void
.end method

.method onPackageUpdatedLocked()V
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 239
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resurrectSessionsLocked()V

    .line 240
    return-void
.end method

.method onPackageUpdatingLocked()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 228
    .local v0, "numSessions":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_0

    .line 229
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

    .line 231
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 233
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->pauseLocked()V

    .line 231
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public onServiceDied(Lcom/android/server/contentcapture/RemoteContentCaptureService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 188
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote service died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onServiceDied(Lcom/android/server/contentcapture/RemoteContentCaptureService;)V

    return-void
.end method

.method public removeDataLocked(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 372
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    return-void

    .line 375
    :cond_0
    invoke-virtual {p1}, Landroid/view/contentcapture/DataRemovalRequest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->assertCallerLocked(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 377
    return-void
.end method

.method public removeSessionLocked(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 454
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 455
    return-void
.end method

.method public sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getSessionId(Landroid/os/IBinder;)I

    move-result v0

    .line 429
    .local v0, "id":I
    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 430
    .local v1, "assistData":Landroid/os/Bundle;
    const-string/jumbo v2, "structure"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/assist/AssistStructure;

    .line 431
    .local v2, "assistStructure":Landroid/app/assist/AssistStructure;
    const-string v3, "content"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistContent;

    .line 432
    .local v3, "assistContent":Landroid/app/assist/AssistContent;
    new-instance v4, Landroid/service/contentcapture/SnapshotData;

    invoke-direct {v4, v1, v2, v3}, Landroid/service/contentcapture/SnapshotData;-><init>(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    .line 434
    .local v4, "snapshotData":Landroid/service/contentcapture/SnapshotData;
    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 435
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 436
    .local v6, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v6, v4}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->sendActivitySnapshotLocked(Landroid/service/contentcapture/SnapshotData;)V

    .line 437
    return v5

    .line 442
    .end local v6    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    :cond_0
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 443
    invoke-virtual {v6, v7, v4}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V

    .line 444
    sget-object v6, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notified activity assist data for activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " without a session Id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return v5

    .line 449
    :cond_1
    return v7
.end method

.method public startSessionLocked(Landroid/os/IBinder;Landroid/content/pm/ActivityPresentationInfo;IIILcom/android/internal/os/IResultReceiver;)V
    .locals 23
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "activityPresentationInfo"    # Landroid/content/pm/ActivityPresentationInfo;
    .param p3, "sessionId"    # I
    .param p4, "uid"    # I
    .param p5, "flags"    # I
    .param p6, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 246
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    const/4 v0, 0x0

    if-nez v13, :cond_0

    .line 247
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string v2, "basic activity info is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/16 v1, 0x104

    invoke-static {v15, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 250
    return-void

    .line 252
    :cond_0
    iget v10, v13, Landroid/content/pm/ActivityPresentationInfo;->taskId:I

    .line 253
    .local v10, "taskId":I
    iget v9, v13, Landroid/content/pm/ActivityPresentationInfo;->displayId:I

    .line 254
    .local v9, "displayId":I
    iget-object v8, v13, Landroid/content/pm/ActivityPresentationInfo;->componentName:Landroid/content/ComponentName;

    .line 255
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

    .line 257
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 256
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

    .line 258
    .local v7, "whiteListed":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v16

    .line 259
    .local v16, "serviceComponentName":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v17

    .line 260
    .local v17, "enabled":Z
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    if-eqz v1, :cond_4

    .line 261
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

    .line 263
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

    .line 265
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

    .line 266
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

    .line 268
    .local v1, "historyItem":Ljava/lang/String;
    iget-object v3, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {v3, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 260
    .end local v1    # "historyItem":Ljava/lang/String;
    :cond_4
    move/from16 v6, p4

    move/from16 v5, p5

    .line 271
    :goto_3
    const/16 v1, 0x14

    if-nez v17, :cond_5

    .line 274
    invoke-static {v15, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 277
    const/4 v1, 0x3

    const/16 v2, 0x14

    const/16 v18, 0x0

    move/from16 v0, p3

    move-object/from16 v3, v16

    move-object v4, v8

    move/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 281
    return-void

    .line 283
    :cond_5
    const-string/jumbo v3, "startSession("

    if-nez v16, :cond_7

    .line 287
    iget-object v0, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_6

    .line 288
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

    .line 290
    :cond_6
    return-void

    .line 293
    :cond_7
    if-nez v7, :cond_9

    .line 294
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_8

    .line 295
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

    .line 298
    :cond_8
    const/16 v1, 0x204

    invoke-static {v15, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 301
    const/4 v1, 0x3

    const/16 v2, 0x204

    const/4 v5, 0x0

    move/from16 v0, p3

    move-object/from16 v3, v16

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 305
    return-void

    .line 308
    :cond_9
    iget-object v3, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 309
    .local v5, "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    const-string v3, ", token="

    const-string/jumbo v4, "startSession(id="

    if-eqz v5, :cond_a

    .line 310
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

    .line 312
    const/16 v1, 0xc

    invoke-static {v15, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 315
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

    .line 319
    return-void

    .line 322
    .end local v13    # "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    .restart local v5    # "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    :cond_a
    move-object v13, v5

    .end local v5    # "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    .restart local v13    # "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    iget-object v5, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v5, :cond_b

    .line 323
    invoke-direct {v11, v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 326
    :cond_b
    iget-object v2, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v2, :cond_c

    .line 327
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

    .line 329
    invoke-static {v15, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 332
    const/4 v1, 0x3

    const/16 v2, 0x14

    const/4 v5, 0x0

    move/from16 v0, p3

    move-object/from16 v3, v16

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 336
    return-void

    .line 340
    :cond_c
    invoke-virtual {v2}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->ensureBoundLocked()V

    .line 342
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

    .line 345
    .local v0, "newSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v1, :cond_d

    .line 346
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSession(): new session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static/range {v20 .. v20}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_d
    iget-object v1, v11, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v14, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    invoke-virtual {v0, v15}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->notifySessionStartedLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 351
    return-void
.end method

.method protected updateLocked(Z)Z
    .locals 4
    .param p1, "disabled"    # Z

    .line 173
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 174
    .local v0, "disabledStateChanged":Z
    if-eqz v0, :cond_0

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->setContentCaptureEnabledLocked(Z)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroyLocked()V

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 182
    return v0
.end method
