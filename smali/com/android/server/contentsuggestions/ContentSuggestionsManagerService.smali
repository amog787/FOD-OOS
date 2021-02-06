.class public Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "ContentSuggestionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;",
        "Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_BITMAP:Ljava/lang/String; = "android.contentsuggestions.extra.BITMAP"

.field private static final MAX_TEMP_SERVICE_DURATION_MS:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE:Z = false


# instance fields
.field private mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040202

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "no_content_suggestions"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;)V

    .line 80
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->enforceCaller(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
    .param p1, "x1"    # I

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
    .param p1, "x1"    # I

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
    .param p1, "x1"    # I

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->isDisabledLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
    .param p1, "x1"    # I

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
    .param p1, "x1"    # I

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
    .param p1, "x1"    # I

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private enforceCaller(ILjava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "func"    # Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "ctx":Landroid/content/Context;
    const-string v1, "android.permission.MANAGE_CONTENT_SUGGESTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 108
    invoke-interface {v1, p1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 109
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected caller is recents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected enforceCallingPermissionForManagement()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->TAG:Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_CONTENT_SUGGESTIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .locals 1

    .line 102
    const v0, 0x1d4c0

    return v0
.end method

.method protected newServiceLocked(IZ)Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    .locals 2
    .param p1, "resolvedUserId"    # I
    .param p2, "disabled"    # Z

    .line 86
    new-instance v0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;Ljava/lang/Object;I)V

    return-object v0
.end method

.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->newServiceLocked(IZ)Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 91
    new-instance v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$1;)V

    const-string v1, "content_suggestions"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 93
    return-void
.end method
