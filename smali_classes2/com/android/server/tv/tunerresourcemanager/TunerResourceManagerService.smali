.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.super Lcom/android/server/SystemService;
.source "TunerResourceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;,
        Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final INVALID_CLIENT_ID:I = -0x1

.field private static final MAX_CLIENT_PRIORITY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "TunerResourceManagerService"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCasResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CasResource;",
            ">;"
        }
    .end annotation
.end field

.field private mClientProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/ClientProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontendResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLnbResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/LnbResource;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMediaResourceManager:Landroid/media/IResourceManagerService;

.field private mNextUnusedClientId:I

.field private mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

.field private mResourceRequestCount:I

.field private mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-string v0, "TunerResourceManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 81
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-direct {v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    .line 84
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceTrmAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceTunerAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 57
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 57
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceDescramblerAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    return-void
.end method

.method private addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V
    .locals 2
    .param p1, "newCas"    # Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 1063
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    return-void
.end method

.method private addClientProfile(ILcom/android/server/tv/tunerresourcemanager/ClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "profile"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .param p3, "listener"    # Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 1091
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    invoke-direct {p0, p1, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addResourcesReclaimListener(ILandroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V

    .line 1093
    return-void
.end method

.method private addFrontendResource(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V
    .locals 5
    .param p1, "newFe"    # Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 992
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 993
    .local v1, "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 994
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeId(I)V

    .line 995
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeIds()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeIds(Ljava/util/Collection;)V

    .line 996
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 997
    .local v2, "excGroupmemberFeId":I
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    .line 998
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeId(I)V

    .line 999
    .end local v2    # "excGroupmemberFeId":I
    goto :goto_1

    .line 1000
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeId(I)V

    .line 1001
    goto :goto_2

    .line 1003
    .end local v1    # "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    :cond_1
    goto :goto_0

    .line 1005
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    return-void
.end method

.method private addLnbResource(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .locals 2
    .param p1, "newLnb"    # Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 1036
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    return-void
.end method

.method private addResourcesReclaimListener(ILandroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V
    .locals 4
    .param p1, "clientId"    # I
    .param p2, "listener"    # Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 852
    const-string v0, "TunerResourceManagerService"

    if-nez p2, :cond_1

    .line 853
    sget-boolean v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener is null when client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    return-void

    .line 859
    :cond_1
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V

    .line 863
    .local v1, "record":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;
    :try_start_0
    invoke-interface {p2}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    nop

    .line 869
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    return-void

    .line 864
    :catch_0
    move-exception v2

    .line 865
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Listener already died."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method private enforceDescramblerAccessPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "apiName"    # Ljava/lang/String;

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TunerResourceManagerService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_TV_DESCRAMBLER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method private enforceTrmAccessPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "apiName"    # Ljava/lang/String;

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TunerResourceManagerService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.TUNER_RESOURCE_ACCESS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    return-void
.end method

.method private enforceTunerAccessPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "apiName"    # Ljava/lang/String;

    .line 1148
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TunerResourceManagerService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_TV_TUNER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    return-void
.end method

.method private generateResourceHandle(II)I
    .locals 3
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # I

    .line 1121
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private getOwnerClientPriority(I)I
    .locals 1
    .param p1, "clientId"    # I

    .line 976
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v0

    return v0
.end method

.method private reclaimingResourcesFromClient(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 1102
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1103
    .local v1, "feId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->removeOwner()V

    .line 1104
    .end local v1    # "feId":Ljava/lang/Integer;
    goto :goto_0

    .line 1105
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseLnbIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1106
    .local v1, "lnbId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->removeOwner()V

    .line 1107
    .end local v1    # "lnbId":Ljava/lang/Integer;
    goto :goto_1

    .line 1108
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1109
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 1111
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->reclaimAllResources()V

    .line 1112
    return-void
.end method

.method private releaseLowerPriorityClientCasResources(I)V
    .locals 0
    .param p1, "releasingCasResourceNum"    # I

    .line 1081
    return-void
.end method

.method private removeCasResource(I)V
    .locals 4
    .param p1, "removingId"    # I

    .line 1067
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 1068
    .local v0, "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    if-nez v0, :cond_0

    .line 1069
    return-void

    .line 1071
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1072
    .local v2, "ownerId":I
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCas()V

    .line 1073
    .end local v2    # "ownerId":I
    goto :goto_0

    .line 1074
    :cond_1
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    return-void
.end method

.method private removeClientProfile(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimingResourcesFromClient(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1097
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    return-void
.end method

.method private removeFrontendResource(I)V
    .locals 5
    .param p1, "removingId"    # I

    .line 1009
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    .line 1010
    .local v0, "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    if-nez v0, :cond_0

    .line 1011
    return-void

    .line 1013
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1014
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseFrontendInternal(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V

    .line 1016
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1017
    .local v2, "excGroupmemberFeId":I
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    .line 1018
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->removeExclusiveGroupMemberFeId(I)V

    .line 1019
    .end local v2    # "excGroupmemberFeId":I
    goto :goto_0

    .line 1020
    :cond_2
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    return-void
.end method

.method private removeLnbResource(I)V
    .locals 3
    .param p1, "removingId"    # I

    .line 1040
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    .line 1041
    .local v0, "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    if-nez v0, :cond_0

    .line 1042
    return-void

    .line 1044
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1045
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 1047
    :cond_1
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    return-void
.end method

.method private updateCasClientMappingOnNewGrant(II)V
    .locals 2
    .param p1, "grantingId"    # I
    .param p2, "ownerClientId"    # I

    .line 956
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 957
    .local v0, "grantingCas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 958
    .local v1, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 959
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCas(I)V

    .line 960
    return-void
.end method

.method private updateCasClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .locals 1
    .param p1, "releasingCas"    # Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .param p2, "ownerClientId"    # I

    .line 964
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 965
    .local v0, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 966
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCas()V

    .line 967
    return-void
.end method

.method private updateFrontendClientMappingOnNewGrant(II)V
    .locals 5
    .param p1, "grantingId"    # I
    .param p2, "ownerClientId"    # I

    .line 922
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    .line 923
    .local v0, "grantingFrontend":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 924
    .local v1, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->setOwner(I)V

    .line 925
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(I)V

    .line 926
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 927
    .local v3, "exclusiveGroupMember":I
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->setOwner(I)V

    .line 928
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(I)V

    .line 929
    .end local v3    # "exclusiveGroupMember":I
    goto :goto_0

    .line 930
    :cond_0
    return-void
.end method

.method private updateFrontendClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V
    .locals 4
    .param p1, "releasingFrontend"    # Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 933
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 934
    .local v0, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->removeOwner()V

    .line 935
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseFrontend(I)V

    .line 936
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 937
    .local v2, "exclusiveGroupMember":I
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->removeOwner()V

    .line 938
    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseFrontend(I)V

    .line 939
    .end local v2    # "exclusiveGroupMember":I
    goto :goto_0

    .line 940
    :cond_0
    return-void
.end method

.method private updateLnbClientMappingOnNewGrant(II)V
    .locals 2
    .param p1, "grantingId"    # I
    .param p2, "ownerClientId"    # I

    .line 943
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    .line 944
    .local v0, "grantingLnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 945
    .local v1, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->setOwner(I)V

    .line 946
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useLnb(I)V

    .line 947
    return-void
.end method

.method private updateLnbClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .locals 2
    .param p1, "releasingLnb"    # Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 950
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getOwnerClientId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 951
    .local v0, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->removeOwner()V

    .line 952
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseLnb(I)V

    .line 953
    return-void
.end method

.method private validateResourceHandle(II)Z
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "resourceHandle"    # I

    .line 1135
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x18

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1139
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1137
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 406
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "TunerResourceManagerService"

    const-string v1, "Native media resource manager service has died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkClientExists(I)Z
    .locals 2
    .param p1, "clientId"    # I

    .line 1116
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .locals 2
    .param p1, "systemId"    # I

    .line 1053
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    return-object v0
.end method

.method protected getCasResources()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CasResource;",
            ">;"
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    return-object v0
.end method

.method protected getClientPriority(II)I
    .locals 2
    .param p1, "useCase"    # I
    .param p2, "pid"    # I

    .line 892
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClientPriority useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isForeground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->getForegroundPriority(I)I

    move-result v0

    return v0

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->getBackgroundPriority(I)I

    move-result v0

    return v0
.end method

.method protected getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .locals 2
    .param p1, "clientId"    # I

    .line 1086
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    return-object v0
.end method

.method protected getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .locals 2
    .param p1, "frontendId"    # I

    .line 982
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    return-object v0
.end method

.method protected getFrontendResources()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    return-object v0
.end method

.method protected getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .locals 2
    .param p1, "lnbId"    # I

    .line 1026
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    return-object v0
.end method

.method protected getLnbResources()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/LnbResource;",
            ">;"
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    return-object v0
.end method

.method protected getResourceIdFromHandle(I)I
    .locals 1
    .param p1, "resourceHandle"    # I

    .line 1128
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1129
    return p1

    .line 1131
    :cond_0
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method protected isForeground(I)Z
    .locals 6
    .param p1, "pid"    # I

    .line 905
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 906
    return v1

    .line 908
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 909
    .local v0, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v0, :cond_1

    .line 910
    return v1

    .line 912
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 913
    .local v3, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_2

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    .line 915
    const/4 v1, 0x1

    return v1

    .line 917
    .end local v3    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    goto :goto_0

    .line 918
    :cond_3
    return v1
.end method

.method protected isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .locals 5
    .param p1, "challengerProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "holderProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 755
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHigherPriority(challengerProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", holderProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 761
    const-string v0, "TvInputManager is null. Can\'t compare the priority."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return v2

    .line 767
    :cond_1
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getTvInputSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 768
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_0

    .line 769
    :cond_2
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getTvInputSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    :goto_0
    nop

    .line 770
    .local v0, "challengerPid":I
    invoke-virtual {p2}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getTvInputSessionId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 771
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    goto :goto_1

    .line 772
    :cond_3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {p2}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getTvInputSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v1

    :goto_1
    nop

    .line 774
    .local v1, "holderPid":I
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getUseCase()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(II)I

    move-result v3

    .line 775
    .local v3, "challengerPriority":I
    invoke-virtual {p2}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getUseCase()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(II)I

    move-result v4

    .line 776
    .local v4, "holderPriority":I
    if-le v3, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public onStart()V
    .locals 1

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->onStart(Z)V

    .line 96
    return-void
.end method

.method protected onStart(Z)V
    .locals 4
    .param p1, "isForTesting"    # Z

    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$1;)V

    const-string v1, "tv_tuner_resource_mgr"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tv_input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 104
    nop

    .line 105
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 106
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parse()V

    .line 108
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-nez v0, :cond_2

    .line 109
    const-string v0, "media.resource_manager"

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 110
    .local v0, "mediaResourceManagerBinder":Landroid/os/IBinder;
    const-string v1, "TunerResourceManagerService"

    if-nez v0, :cond_1

    .line 111
    const-string v2, "Resource Manager Service not available."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    nop

    .line 120
    invoke-static {v0}, Landroid/media/IResourceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Could not link to death of native resource manager service."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 123
    .end local v0    # "mediaResourceManagerBinder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method protected reclaimResource(II)Z
    .locals 4
    .param p1, "reclaimingClientId"    # I
    .param p2, "resourceType"    # I

    .line 875
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reclaiming resources because higher priority client request resource type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    nop

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 886
    .local v0, "profile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimingResourcesFromClient(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 887
    const/4 v1, 0x1

    return v1

    .line 881
    .end local v0    # "profile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to reclaim resources on client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    const/4 v1, 0x0

    return v1
.end method

.method protected registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .locals 6
    .param p1, "profile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "listener"    # Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .param p3, "clientId"    # [I

    .line 417
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClientProfile(clientProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    aput v0, p3, v2

    .line 422
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_1

    .line 423
    const-string v0, "TvInputManager is null. Can\'t register client profile."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 427
    :cond_1
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    aput v0, p3, v2

    .line 429
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getTvInputSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 430
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getTvInputSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    :goto_0
    nop

    .line 434
    .local v0, "pid":I
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getTvInputSessionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-eqz v3, :cond_3

    .line 436
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-interface {v3, v4, v0}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    goto :goto_1

    .line 437
    :catch_0
    move-exception v3

    .line 438
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not overridePid in resourceManagerSercice, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    aget v3, p3, v2

    invoke-direct {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;-><init>(I)V

    .line 444
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getTvInputSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->tvInputSessionId(Ljava/lang/String;)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 445
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getUseCase()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->useCase(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 446
    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->processId(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 448
    .local v1, "clientProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getUseCase()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPriority(I)V

    .line 450
    aget v2, p3, v2

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addClientProfile(ILcom/android/server/tv/tunerresourcemanager/ClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V

    .line 451
    return-void
.end method

.method protected releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .locals 2
    .param p1, "cas"    # Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .param p2, "ownerClientId"    # I

    .line 797
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseCasSession(sessionResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V

    .line 801
    return-void
.end method

.method protected releaseFrontendInternal(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V
    .locals 2
    .param p1, "fe"    # Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 781
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseFrontend(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V

    .line 785
    return-void
.end method

.method protected releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .locals 2
    .param p1, "lnb"    # Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 789
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseLnb(lnbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 793
    return-void
.end method

.method protected requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z
    .locals 11
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    .param p2, "casSessionHandle"    # [I

    .line 706
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCasSession(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getCasSystemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 711
    .local v0, "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    if-nez v0, :cond_1

    .line 712
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getCasSystemId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    const v2, 0x7fffffff

    .line 713
    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    move-result-object v1

    .line 714
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 715
    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V

    .line 717
    :cond_1
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, p2, v1

    .line 718
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getClientId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    .line 719
    .local v3, "requestClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    const/4 v4, -0x1

    .line 721
    .local v4, "lowestPriorityOwnerId":I
    const/16 v5, 0x3e9

    .line 722
    .local v5, "currentLowestPriority":I
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-nez v6, :cond_2

    .line 723
    nop

    .line 724
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v2

    .line 723
    invoke-direct {p0, v8, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v2

    aput v2, p2, v1

    .line 725
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getCasSystemId()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getClientId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnNewGrant(II)V

    .line 726
    return v7

    .line 728
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 730
    .local v9, "ownerId":I
    invoke-direct {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getOwnerClientPriority(I)I

    move-result v10

    .line 731
    .local v10, "priority":I
    if-le v5, v10, :cond_3

    .line 732
    move v4, v9

    .line 733
    move v5, v10

    .line 735
    .end local v9    # "ownerId":I
    .end local v10    # "priority":I
    :cond_3
    goto :goto_0

    .line 739
    :cond_4
    if-le v4, v2, :cond_6

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-le v2, v5, :cond_6

    .line 740
    invoke-virtual {p0, v4, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 742
    return v1

    .line 744
    :cond_5
    nop

    .line 745
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v2

    .line 744
    invoke-direct {p0, v8, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v2

    aput v2, p2, v1

    .line 746
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getCasSystemId()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getClientId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnNewGrant(II)V

    .line 747
    return v7

    .line 749
    :cond_6
    return v1
.end method

.method protected requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z
    .locals 3
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    .param p2, "demuxHandle"    # [I

    .line 805
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDemux(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v2

    aput v2, p2, v1

    .line 810
    return v0
.end method

.method protected requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z
    .locals 2
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .param p2, "descramblerHandle"    # [I

    .line 816
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDescrambler(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    const/4 v0, 0x2

    .line 821
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v0

    aput v0, p2, v1

    .line 822
    const/4 v0, 0x1

    return v0
.end method

.method protected requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z
    .locals 10
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .param p2, "frontendHandle"    # [I

    .line 593
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestFrontend(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p2, v0

    .line 598
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->getClientId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    .line 599
    .local v2, "requestClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    const/4 v3, -0x1

    .line 600
    .local v3, "grantingFrontendId":I
    const/4 v4, -0x1

    .line 602
    .local v4, "inUseLowestPriorityFrId":I
    const/16 v5, 0x3e9

    .line 603
    .local v5, "currentLowestPriority":I
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 604
    .local v7, "fr":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v8

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->getFrontendType()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 605
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->isInUse()Z

    move-result v8

    if-nez v8, :cond_2

    .line 607
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeIds()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 608
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getId()I

    move-result v3

    .line 609
    goto :goto_2

    .line 610
    :cond_1
    if-gez v3, :cond_3

    .line 613
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getId()I

    move-result v3

    goto :goto_1

    .line 615
    :cond_2
    if-gez v3, :cond_3

    .line 618
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getOwnerClientPriority(I)I

    move-result v8

    .line 619
    .local v8, "priority":I
    if-le v5, v8, :cond_3

    .line 620
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getId()I

    move-result v4

    .line 621
    move v5, v8

    .line 625
    .end local v7    # "fr":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .end local v8    # "priority":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 628
    :cond_4
    :goto_2
    const/4 v6, 0x1

    if-le v3, v1, :cond_5

    .line 629
    invoke-direct {p0, v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v1

    aput v1, p2, v0

    .line 631
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->getClientId()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(II)V

    .line 632
    return v6

    .line 637
    :cond_5
    if-le v4, v1, :cond_7

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v1

    if-le v1, v5, :cond_7

    .line 638
    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_6

    .line 640
    return v0

    .line 642
    :cond_6
    invoke-direct {p0, v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v1

    aput v1, p2, v0

    .line 644
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->getClientId()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(II)V

    .line 645
    return v6

    .line 648
    :cond_7
    return v0
.end method

.method protected requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z
    .locals 9
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    .param p2, "lnbHandle"    # [I

    .line 653
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestLnb(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p2, v0

    .line 658
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->getClientId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    .line 659
    .local v2, "requestClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    const/4 v3, -0x1

    .line 660
    .local v3, "grantingLnbId":I
    const/4 v4, -0x1

    .line 662
    .local v4, "inUseLowestPriorityLnbId":I
    const/16 v5, 0x3e9

    .line 663
    .local v5, "currentLowestPriority":I
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 664
    .local v7, "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->isInUse()Z

    move-result v8

    if-nez v8, :cond_1

    .line 666
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getId()I

    move-result v3

    .line 667
    goto :goto_1

    .line 671
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getOwnerClientId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getOwnerClientPriority(I)I

    move-result v8

    .line 672
    .local v8, "priority":I
    if-le v5, v8, :cond_2

    .line 673
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getId()I

    move-result v4

    .line 674
    move v5, v8

    .line 677
    .end local v7    # "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .end local v8    # "priority":I
    :cond_2
    goto :goto_0

    .line 680
    :cond_3
    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x3

    if-le v3, v1, :cond_4

    .line 681
    invoke-direct {p0, v7, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v1

    aput v1, p2, v0

    .line 683
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->getClientId()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnNewGrant(II)V

    .line 684
    return v6

    .line 689
    :cond_4
    if-le v4, v1, :cond_6

    .line 690
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v1

    if-le v1, v5, :cond_6

    .line 691
    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getOwnerClientId()I

    move-result v1

    invoke-virtual {p0, v1, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 693
    return v0

    .line 695
    :cond_5
    invoke-direct {p0, v7, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v1

    aput v1, p2, v0

    .line 697
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->getClientId()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnNewGrant(II)V

    .line 698
    return v6

    .line 701
    :cond_6
    return v0
.end method

.method protected setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .locals 5
    .param p1, "infos"    # [Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;

    .line 494
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "updateFrontendInfo:"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 497
    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 507
    .local v0, "updatingFrontendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 508
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 509
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontend id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 515
    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->getId()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;-><init>(I)V

    aget-object v4, p1, v2

    .line 516
    invoke-virtual {v4}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->getFrontendType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->type(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    move-result-object v3

    aget-object v4, p1, v2

    .line 517
    invoke-virtual {v4}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->getExclusiveGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->exclusiveGroupId(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    move-result-object v3

    .line 518
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    .line 519
    .local v3, "newFe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-direct {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addFrontendResource(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V

    .line 507
    .end local v3    # "newFe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 523
    .end local v2    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 525
    .local v2, "removingId":I
    invoke-direct {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeFrontendResource(I)V

    .line 526
    .end local v2    # "removingId":I
    goto :goto_3

    .line 527
    :cond_4
    return-void
.end method

.method protected setLnbInfoListInternal([I)V
    .locals 5
    .param p1, "lnbIds"    # [I

    .line 531
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLnbInfo(lnbId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 543
    .local v0, "updatingLnbIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 544
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 545
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lnb id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 551
    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;

    aget v4, p1, v2

    invoke-direct {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;-><init>(I)V

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    .line 552
    .local v3, "newLnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    invoke-direct {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addLnbResource(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 543
    .end local v3    # "newLnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 556
    .end local v2    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 557
    .local v2, "removingId":I
    invoke-direct {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeLnbResource(I)V

    .line 558
    .end local v2    # "removingId":I
    goto :goto_3

    .line 559
    :cond_4
    return-void
.end method

.method protected unregisterClientProfileInternal(I)V
    .locals 4
    .param p1, "clientId"    # I

    .line 455
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterClientProfile(clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    .line 460
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-eqz v0, :cond_1

    .line 462
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not overridePid in resourceManagerSercice when unregister, remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateCasInfoInternal(II)V
    .locals 2
    .param p1, "casSystemId"    # I
    .param p2, "maxSessionNum"    # I

    .line 563
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCasInfo(casSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSessionNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    if-nez p2, :cond_1

    .line 570
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeCasResource(I)V

    .line 571
    return-void

    .line 574
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 575
    .local v0, "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    if-eqz v0, :cond_3

    .line 576
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getUsedSessionNum()I

    move-result v1

    if-le v1, p2, :cond_2

    .line 578
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getUsedSessionNum()I

    move-result v1

    sub-int/2addr v1, p2

    .line 579
    .local v1, "releasingCasResourceNum":I
    invoke-direct {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLowerPriorityClientCasResources(I)V

    .line 581
    .end local v1    # "releasingCasResourceNum":I
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->updateMaxSessionNum(I)V

    .line 582
    return-void

    .line 585
    :cond_3
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    invoke-direct {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    .line 586
    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    move-result-object v1

    .line 587
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 588
    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V

    .line 589
    return-void
.end method

.method protected updateClientPriorityInternal(III)Z
    .locals 4
    .param p1, "clientId"    # I
    .param p2, "priority"    # I
    .param p3, "niceValue"    # I

    .line 472
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClientPriority(clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", niceValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 479
    .local v0, "profile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    if-nez v0, :cond_1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find client profile with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " when trying to update the client priority."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x0

    return v1

    .line 486
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPriority(I)V

    .line 487
    invoke-virtual {v0, p3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setNiceValue(I)V

    .line 489
    const/4 v1, 0x1

    return v1
.end method
