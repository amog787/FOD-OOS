.class public final Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "ContentSuggestionsPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;",
        "Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "master"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 61
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 62
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 46
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->updateRemoteServiceLocked()V

    return-void
.end method

.method private ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
    .locals 10

    .line 150
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    if-nez v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "serviceName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->verbose:Z

    if-eqz v1, :cond_0

    .line 154
    sget-object v1, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "ensureRemoteServiceLocked(): not set"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 158
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 160
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    new-instance v9, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mUserId:I

    new-instance v6, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;

    invoke-direct {v6, p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V

    iget-object v2, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 169
    invoke-virtual {v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->isBindInstantServiceAllowed()Z

    move-result v7

    iget-object v2, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    iget-boolean v8, v2, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->verbose:Z

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/contentsuggestions/RemoteContentSuggestionsService$Callbacks;ZZ)V

    iput-object v9, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 172
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v1    # "serviceComponent":Landroid/content/ComponentName;
    :cond_2
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    return-object v0
.end method

.method private updateRemoteServiceLocked()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->destroy()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method classifyContentSelectionsLocked(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .locals 1
    .param p1, "classificationsRequest"    # Landroid/app/contentsuggestions/ClassificationsRequest;
    .param p2, "callback"    # Landroid/app/contentsuggestions/IClassificationsCallback;

    .line 124
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object v0

    .line 125
    .local v0, "service":Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 70
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    iget v2, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    nop

    .line 76
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    return-object v0

    .line 77
    :cond_0
    sget-object v1, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentSuggestionsService from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' does not require permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service does not require permission android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method notifyInteractionLocked(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 132
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object v0

    .line 133
    .local v0, "service":Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    :cond_0
    return-void
.end method

.method provideContextImageFromBitmapLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bitmapContainingExtras"    # Landroid/os/Bundle;

    .line 97
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->provideContextImageLocked(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method provideContextImageLocked(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/graphics/GraphicBuffer;
    .param p3, "colorSpaceIdForSnapshot"    # I
    .param p4, "imageContextRequestExtras"    # Landroid/os/Bundle;

    .line 103
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object v0

    .line 104
    .local v0, "service":Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->provideContextImage(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;)V

    .line 108
    :cond_0
    return-void
.end method

.method suggestContentSelectionsLocked(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 1
    .param p1, "selectionsRequest"    # Landroid/app/contentsuggestions/SelectionsRequest;
    .param p2, "selectionsCallback"    # Landroid/app/contentsuggestions/ISelectionsCallback;

    .line 114
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object v0

    .line 115
    .local v0, "service":Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected updateLocked(Z)Z
    .locals 1
    .param p1, "disabled"    # Z

    .line 89
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 90
    .local v0, "enabledChanged":Z
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->updateRemoteServiceLocked()V

    .line 91
    return v0
.end method
