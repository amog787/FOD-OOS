.class public Lcom/android/server/location/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field public static final MSG_DISABLE_NANO_APP:I = 0x2

.field public static final MSG_ENABLE_NANO_APP:I = 0x1

.field public static final MSG_HUB_RESET:I = 0x7

.field public static final MSG_LOAD_NANO_APP:I = 0x3

.field public static final MSG_QUERY_MEMORY:I = 0x6

.field public static final MSG_QUERY_NANO_APPS:I = 0x5

.field public static final MSG_UNLOAD_NANO_APP:I = 0x4

.field private static final OS_APP_INSTANCE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ContextHubService"


# instance fields
.field private final mCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/location/IContextHubCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientManager:Lcom/android/server/location/ContextHubClientManager;

.field private final mContext:Landroid/content/Context;

.field private final mContextHubIdToInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextHubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mDefaultClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/IContextHubClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

.field private final mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    .line 90
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 106
    new-instance v0, Lcom/android/server/location/NanoAppStateManager;

    invoke-direct {v0}, Lcom/android/server/location/NanoAppStateManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    .line 145
    iput-object p1, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    .line 147
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->getContextHubProxy()Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    .line 150
    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 154
    return-void

    .line 157
    :cond_0
    new-instance v1, Lcom/android/server/location/ContextHubClientManager;

    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/server/location/ContextHubClientManager;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;)V

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 158
    new-instance v0, Lcom/android/server/location/ContextHubTransactionManager;

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/ContextHubTransactionManager;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Lcom/android/server/location/NanoAppStateManager;)V

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    .line 168
    const-string v0, "ContextHubService"

    const-string v1, "RemoteException while getting Context Hub info daemon isn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "hubList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    nop

    .line 172
    invoke-static {v1}, Lcom/android/server/location/ContextHubServiceUtil;->createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v2

    .line 171
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 175
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v2, "defaultClientMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/hardware/location/IContextHubClient;>;"
    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 177
    .local v4, "contextHubId":I
    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/ContextHubInfo;

    .line 178
    .local v5, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 179
    invoke-direct {p0, v4}, Lcom/android/server/location/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v7

    .line 178
    invoke-virtual {v6, v5, v7}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;)Landroid/hardware/location/IContextHubClient;

    move-result-object v6

    .line 180
    .local v6, "client":Landroid/hardware/location/IContextHubClient;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :try_start_0
    iget-object v7, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    new-instance v8, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;

    invoke-direct {v8, p0, v4}, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;-><init>(Lcom/android/server/location/ContextHubService;I)V

    invoke-interface {v7, v4, v8}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_1

    .line 185
    :catch_0
    move-exception v7

    .line 186
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException while registering service callback for hub (ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    .line 193
    .end local v4    # "contextHubId":I
    .end local v5    # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    .end local v6    # "client":Landroid/hardware/location/IContextHubClient;
    goto :goto_0

    .line 194
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ContextHubService;ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleClientMessageCallback(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/ContextHubService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/ContextHubService;->handleTransactionResultCallback(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/ContextHubService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleHubEventCallback(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/ContextHubService;IJI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubService;->handleAppAbortCallback(IJI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/ContextHubService;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleQueryAppsCallback(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/ContextHubService;)Lcom/android/server/location/NanoAppStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;

    .line 63
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/ContextHubService;III[B)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [B

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/location/ContextHubService;IILandroid/hardware/location/NanoAppBinary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/hardware/location/NanoAppBinary;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/ContextHubService;->handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/ContextHubService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleUnloadResponseOldApi(II)V

    return-void
.end method

.method private checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z
    .locals 5
    .param p1, "contextHubId"    # I
    .param p2, "callback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "transactionType"    # I

    .line 855
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const-string v1, "RemoteException while calling onTransactionComplete"

    const/4 v2, 0x0

    const-string v3, "ContextHubService"

    if-nez v0, :cond_0

    .line 857
    const/16 v0, 0x8

    :try_start_0
    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    goto :goto_0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 862
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v2

    .line 864
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-static {p3, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " transaction for invalid hub ID "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 865
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 872
    goto :goto_1

    .line 870
    :catch_1
    move-exception v0

    .line 871
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 876
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkPermissions()V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    .line 806
    return-void
.end method

.method private createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
    .locals 1
    .param p1, "contextHubId"    # I

    .line 204
    new-instance v0, Lcom/android/server/location/ContextHubService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$1;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;

    .line 306
    new-instance v0, Lcom/android/server/location/ContextHubService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/ContextHubService$2;-><init>(Lcom/android/server/location/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V

    return-object v0
.end method

.method private createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .param p1, "contextHubId"    # I

    .line 344
    new-instance v0, Lcom/android/server/location/ContextHubService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$4;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .param p1, "contextHubId"    # I

    .line 325
    new-instance v0, Lcom/android/server/location/ContextHubService$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$3;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private getContextHubProxy()Landroid/hardware/contexthub/V1_0/IContexthub;
    .locals 4

    .line 247
    const-string v0, "ContextHubService"

    const/4 v1, 0x0

    .line 249
    .local v1, "proxy":Landroid/hardware/contexthub/V1_0/IContexthub;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 254
    :goto_0
    goto :goto_1

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Context Hub HAL service not found"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 250
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v2

    .line 251
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 256
    :goto_1
    return-object v1
.end method

.method private handleAppAbortCallback(IJI)V
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "abortCode"    # I

    .line 586
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubClientManager;->onNanoAppAborted(IJI)V

    .line 587
    return-void
.end method

.method private handleClientMessageCallback(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 514
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/ContextHubClientManager;->onMessageFromNanoApp(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    .line 515
    return-void
.end method

.method private handleHubEventCallback(II)V
    .locals 2
    .param p1, "contextHubId"    # I
    .param p2, "eventType"    # I

    .line 567
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubTransactionManager;->onHubReset()V

    .line 569
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    .line 571
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/ContextHubClientManager;->onHubReset(I)V

    goto :goto_0

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown hub event (hub ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_0
    return-void
.end method

.method private handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V
    .locals 4
    .param p1, "contextHubId"    # I
    .param p2, "result"    # I
    .param p3, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;

    .line 524
    if-nez p3, :cond_0

    .line 525
    const-string v0, "ContextHubService"

    const-string v1, "Nanoapp binary field was null for a load transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 530
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 531
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    .line 532
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    .line 531
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v1

    .line 533
    .local v1, "nanoAppHandle":I
    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 535
    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-direct {p0, v2, p1, v3, v0}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 536
    return-void
.end method

.method private handleQueryAppsCallback(ILjava/util/List;)V
    .locals 2
    .param p1, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 596
    .local p2, "nanoAppInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    nop

    .line 597
    invoke-static {p2}, Lcom/android/server/location/ContextHubServiceUtil;->createNanoAppStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 599
    .local v0, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/NanoAppStateManager;->updateCache(ILjava/util/List;)V

    .line 600
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->onQueryResponse(Ljava/util/List;)V

    .line 601
    return-void
.end method

.method private handleTransactionResultCallback(III)V
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "transactionId"    # I
    .param p3, "result"    # I

    .line 557
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/location/ContextHubTransactionManager;->onTransactionResponse(II)V

    .line 558
    return-void
.end method

.method private handleUnloadResponseOldApi(II)V
    .locals 3
    .param p1, "contextHubId"    # I
    .param p2, "result"    # I

    .line 544
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 545
    .local v0, "data":[B
    int-to-byte v1, p2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 546
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 547
    return-void
.end method

.method private isValidContextHubId(I)Z
    .locals 2
    .param p1, "contextHubId"    # I

    .line 608
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dump$1(Ljava/io/PrintWriter;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .locals 0
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "info"    # Landroid/hardware/location/NanoAppInstanceInfo;

    .line 799
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$findNanoAppOnHub$0(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .locals 1
    .param p0, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .param p1, "foundInstances"    # Ljava/util/ArrayList;
    .param p2, "info"    # Landroid/hardware/location/NanoAppInstanceInfo;

    .line 424
    invoke-virtual {p0, p2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_0
    return-void
.end method

.method private onMessageReceiptOldApi(III[B)I
    .locals 9
    .param p1, "msgType"    # I
    .param p2, "contextHubHandle"    # I
    .param p3, "appInstance"    # I
    .param p4, "data"    # [B

    .line 810
    if-nez p4, :cond_0

    .line 811
    const/4 v0, -0x1

    return v0

    .line 814
    :cond_0
    const/4 v0, 0x0

    .line 815
    .local v0, "msgVersion":I
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 822
    .local v1, "callbacksCount":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 826
    return v2

    .line 829
    :cond_1
    new-instance v3, Landroid/hardware/location/ContextHubMessage;

    invoke-direct {v3, p1, v0, p4}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    .line 830
    .local v3, "msg":Landroid/hardware/location/ContextHubMessage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 831
    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/IContextHubCallback;

    .line 833
    .local v5, "callback":Landroid/hardware/location/IContextHubCallback;
    :try_start_0
    invoke-interface {v5, p2, p3, v3}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    goto :goto_1

    .line 834
    :catch_0
    move-exception v6

    .line 835
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") calling remote callback ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ContextHubService"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    nop

    .line 830
    .end local v5    # "callback":Landroid/hardware/location/IContextHubCallback;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 839
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 840
    return v2
.end method

.method private queryNanoAppsInternal(I)I
    .locals 3
    .param p1, "contextHubId"    # I

    .line 449
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x1

    return v0

    .line 453
    :cond_0
    nop

    .line 454
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v0

    .line 455
    .local v0, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v1

    .line 458
    .local v1, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v2, v1}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 459
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public createClient(ILandroid/hardware/location/IContextHubClientCallback;)Landroid/hardware/location/IContextHubClient;
    .locals 3
    .param p1, "contextHubId"    # I
    .param p2, "clientCallback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 626
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    if-eqz p2, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 634
    .local v0, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 630
    .end local v0    # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot register client with null callback"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid context hub ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createPendingIntentClient(ILandroid/app/PendingIntent;J)Landroid/hardware/location/IContextHubClient;
    .locals 3
    .param p1, "contextHubId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 652
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 657
    .local v0, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 653
    .end local v0    # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid context hub ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 2
    .param p1, "contextHubId"    # I
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 752
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 759
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 760
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string v1, "ContextHubService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 788
    :cond_0
    const-string v0, "Dumping ContextHub Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    const-string v1, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    .line 794
    .local v2, "hubInfo":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 795
    .end local v2    # "hubInfo":Landroid/hardware/location/ContextHubInfo;
    goto :goto_0

    .line 796
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    const-string v0, "=================== NANOAPPS ===================="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    new-instance v1, Lcom/android/server/location/-$$Lambda$ContextHubService$HPGvKluemttyVfAcSog-eXiJyHE;

    invoke-direct {v1, p2}, Lcom/android/server/location/-$$Lambda$ContextHubService$HPGvKluemttyVfAcSog-eXiJyHE;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 802
    return-void
.end method

.method public enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 2
    .param p1, "contextHubId"    # I
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 728
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 735
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 736
    return-void
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 4
    .param p1, "contextHubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v0, "foundInstances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    new-instance v2, Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;

    invoke-direct {v2, p2, v0}, Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;-><init>(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 430
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 431
    .local v1, "retArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 432
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getContextHubHandles()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 272
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->createPrimitiveIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 2
    .param p1, "contextHubHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 278
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Context Hub handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in getContextHubInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    return-object v0
.end method

.method public getContextHubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 294
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 1
    .param p1, "nanoAppHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 413
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    return-object v0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 4
    .param p1, "contextHubHandle"    # I
    .param p2, "nanoApp"    # Landroid/hardware/location/NanoApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 360
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 361
    return v1

    .line 363
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    const-string v2, "ContextHubService"

    if-nez v0, :cond_1

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Context Hub handle "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in loadNanoApp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v1

    .line 367
    :cond_1
    if-nez p2, :cond_2

    .line 368
    const-string v0, "NanoApp cannot be null in loadNanoApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return v1

    .line 373
    :cond_2
    new-instance v0, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/location/NanoAppBinary;-><init>([B)V

    .line 374
    .local v0, "nanoAppBinary":Landroid/hardware/location/NanoAppBinary;
    nop

    .line 375
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubService;->createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 377
    .local v1, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/location/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v2

    .line 380
    .local v2, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v3, v2}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 381
    const/4 v3, 0x0

    return v3
.end method

.method public loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    .locals 2
    .param p1, "contextHubId"    # I
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 674
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    return-void

    .line 678
    :cond_0
    if-nez p3, :cond_1

    .line 679
    const-string v0, "ContextHubService"

    const-string v1, "NanoAppBinary cannot be null in loadNanoAppOnHub"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 682
    return-void

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 687
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 688
    return-void
.end method

.method public queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 2
    .param p1, "contextHubId"    # I
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 774
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 781
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 782
    return-void
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/IContextHubCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 262
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added callback, total callbacks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 265
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 9
    .param p1, "contextHubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "msg"    # Landroid/hardware/location/ContextHubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 466
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 467
    return v1

    .line 469
    :cond_0
    const-string v0, "ContextHubService"

    if-nez p3, :cond_1

    .line 470
    const-string v2, "ContextHubMessage cannot be null in sendMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v1

    .line 473
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v2

    if-nez v2, :cond_2

    .line 474
    const-string v2, "ContextHubMessage message body cannot be null in sendMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return v1

    .line 477
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Context Hub handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in sendMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return v1

    .line 482
    :cond_3
    const/4 v2, 0x0

    .line 483
    .local v2, "success":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v1, :cond_6

    .line 484
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 485
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    move v2, v3

    goto :goto_2

    .line 487
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid OS message params of type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 490
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/server/location/ContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v5

    .line 491
    .local v5, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-eqz v5, :cond_8

    .line 492
    nop

    .line 493
    invoke-virtual {v5}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v6

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v0

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v8

    .line 492
    invoke-static {v6, v7, v0, v8}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    .line 495
    .local v0, "message":Landroid/hardware/location/NanoAppMessage;
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/IContextHubClient;

    .line 496
    .local v6, "client":Landroid/hardware/location/IContextHubClient;
    invoke-interface {v6, v0}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    move v3, v4

    :goto_1
    move v2, v3

    .line 498
    .end local v0    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local v6    # "client":Landroid/hardware/location/IContextHubClient;
    goto :goto_2

    .line 499
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send nanoapp message - nanoapp with handle "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not exist."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v5    # "info":Landroid/hardware/location/NanoAppInstanceInfo;
    :goto_2
    if-eqz v2, :cond_9

    move v1, v4

    :cond_9
    return v1
.end method

.method public unloadNanoApp(I)I
    .locals 7
    .param p1, "nanoAppHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 387
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 388
    return v1

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    .line 392
    invoke-virtual {v0, p1}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    .line 393
    .local v0, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-nez v0, :cond_1

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid nanoapp handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in unloadNanoApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextHubService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v1

    .line 398
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v1

    .line 399
    .local v1, "contextHubId":I
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v2

    .line 400
    .local v2, "nanoAppId":J
    nop

    .line 401
    invoke-direct {p0, v1}, Lcom/android/server/location/ContextHubService;->createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v4

    .line 402
    .local v4, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/server/location/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v5

    .line 405
    .local v5, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v6, v5}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 406
    const/4 v6, 0x0

    return v6
.end method

.method public unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 2
    .param p1, "contextHubId"    # I
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 704
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 711
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 712
    return-void
.end method
