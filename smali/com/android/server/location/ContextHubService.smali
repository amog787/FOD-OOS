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

.field private final mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

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
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    const-string v0, "ContextHubService"

    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    .line 95
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 111
    new-instance v1, Lcom/android/server/location/NanoAppStateManager;

    invoke-direct {v1}, Lcom/android/server/location/NanoAppStateManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    .line 150
    iput-object p1, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->getContextHubWrapper()Lcom/android/server/location/IContextHubWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    .line 153
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 154
    iput-object v2, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    .line 155
    iput-object v2, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 159
    return-void

    .line 162
    :cond_0
    new-instance v1, Lcom/android/server/location/ContextHubClientManager;

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    invoke-virtual {v4}, Lcom/android/server/location/IContextHubWrapper;->getHub()Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/location/ContextHubClientManager;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;)V

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 163
    new-instance v1, Lcom/android/server/location/ContextHubTransactionManager;

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    .line 164
    invoke-virtual {v3}, Lcom/android/server/location/IContextHubWrapper;->getHub()Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/location/ContextHubTransactionManager;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Lcom/android/server/location/NanoAppStateManager;)V

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    invoke-virtual {v1}, Lcom/android/server/location/IContextHubWrapper;->getHub()Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contexthub/V1_0/IContexthub;->getHubs()Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .local v1, "hubList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    goto :goto_0

    .line 169
    .end local v1    # "hubList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException while getting Context Hub info"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 173
    .local v1, "hubList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    :goto_0
    nop

    .line 174
    invoke-static {v1}, Lcom/android/server/location/ContextHubServiceUtil;->createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v3

    .line 173
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 177
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v3, "defaultClientMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/hardware/location/IContextHubClient;>;"
    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 179
    .local v5, "contextHubId":I
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/ContextHubInfo;

    .line 180
    .local v6, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v7, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 181
    invoke-direct {p0, v5}, Lcom/android/server/location/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v8

    .line 180
    invoke-virtual {v7, v6, v8}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;)Landroid/hardware/location/IContextHubClient;

    move-result-object v7

    .line 182
    .local v7, "client":Landroid/hardware/location/IContextHubClient;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :try_start_1
    iget-object v8, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    invoke-virtual {v8}, Lcom/android/server/location/IContextHubWrapper;->getHub()Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v8

    new-instance v9, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;

    invoke-direct {v9, p0, v5}, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;-><init>(Lcom/android/server/location/ContextHubService;I)V

    invoke-interface {v8, v5, v9}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    goto :goto_2

    .line 187
    :catch_1
    move-exception v8

    .line 188
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemoteException while registering service callback for hub (ID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    .line 195
    .end local v5    # "contextHubId":I
    .end local v6    # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    .end local v7    # "client":Landroid/hardware/location/IContextHubClient;
    goto :goto_1

    .line 196
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 198
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/IContextHubWrapper;->supportsSettingNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->sendLocationSettingUpdate()V

    .line 200
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    const-string/jumbo v4, "location_mode"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/location/ContextHubService$1;

    invoke-direct {v6, p0, v2}, Lcom/android/server/location/ContextHubService$1;-><init>(Lcom/android/server/location/ContextHubService;Landroid/os/Handler;)V

    const/4 v2, -0x1

    .line 200
    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 210
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ContextHubService;ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleClientMessageCallback(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/ContextHubService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/ContextHubService;->handleTransactionResultCallback(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/ContextHubService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleHubEventCallback(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/ContextHubService;IJI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubService;->handleAppAbortCallback(IJI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/ContextHubService;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleQueryAppsCallback(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/ContextHubService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;

    .line 68
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->sendLocationSettingUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/ContextHubService;)Lcom/android/server/location/NanoAppStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;

    .line 68
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/ContextHubService;III[B)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [B

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/location/ContextHubService;IILandroid/hardware/location/NanoAppBinary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/hardware/location/NanoAppBinary;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/ContextHubService;->handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/ContextHubService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleUnloadResponseOldApi(II)V

    return-void
.end method

.method private checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z
    .locals 5
    .param p1, "contextHubId"    # I
    .param p2, "callback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "transactionType"    # I

    .line 893
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    const-string v1, "RemoteException while calling onTransactionComplete"

    const/4 v2, 0x0

    const-string v3, "ContextHubService"

    if-nez v0, :cond_0

    .line 895
    const/16 v0, 0x8

    :try_start_0
    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 900
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v2

    .line 902
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-static {p3, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " transaction for invalid hub ID "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 910
    goto :goto_1

    .line 908
    :catch_1
    move-exception v0

    .line 909
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 914
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkPermissions()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    .line 844
    return-void
.end method

.method private createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
    .locals 1
    .param p1, "contextHubId"    # I

    .line 219
    new-instance v0, Lcom/android/server/location/ContextHubService$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$2;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;

    .line 317
    new-instance v0, Lcom/android/server/location/ContextHubService$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/ContextHubService$3;-><init>(Lcom/android/server/location/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V

    return-object v0
.end method

.method private createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .param p1, "contextHubId"    # I

    .line 355
    new-instance v0, Lcom/android/server/location/ContextHubService$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$5;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .param p1, "contextHubId"    # I

    .line 336
    new-instance v0, Lcom/android/server/location/ContextHubService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$4;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 829
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/-$$Lambda$ContextHubService$CF_XmCHU9Bf2P5yun6nYrbm6Fpk;

    invoke-direct {v1, p1}, Lcom/android/server/location/-$$Lambda$ContextHubService$CF_XmCHU9Bf2P5yun6nYrbm6Fpk;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 835
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 836
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v2, p1}, Lcom/android/server/location/ContextHubClientManager;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 837
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 839
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 840
    return-void
.end method

.method private getContextHubWrapper()Lcom/android/server/location/IContextHubWrapper;
    .locals 1

    .line 262
    invoke-static {}, Lcom/android/server/location/IContextHubWrapper;->maybeConnectTo1_1()Lcom/android/server/location/IContextHubWrapper;

    move-result-object v0

    .line 263
    .local v0, "wrapper":Lcom/android/server/location/IContextHubWrapper;
    if-nez v0, :cond_0

    .line 264
    invoke-static {}, Lcom/android/server/location/IContextHubWrapper;->maybeConnectTo1_0()Lcom/android/server/location/IContextHubWrapper;

    move-result-object v0

    .line 267
    :cond_0
    return-object v0
.end method

.method private handleAppAbortCallback(IJI)V
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "abortCode"    # I

    .line 599
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubClientManager;->onNanoAppAborted(IJI)V

    .line 600
    return-void
.end method

.method private handleClientMessageCallback(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 525
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/ContextHubClientManager;->onMessageFromNanoApp(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    .line 526
    return-void
.end method

.method private handleHubEventCallback(II)V
    .locals 2
    .param p1, "contextHubId"    # I
    .param p2, "eventType"    # I

    .line 578
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->sendLocationSettingUpdate()V

    .line 581
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubTransactionManager;->onHubReset()V

    .line 582
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    .line 584
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/ContextHubClientManager;->onHubReset(I)V

    goto :goto_0

    .line 586
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

    .line 589
    :goto_0
    return-void
.end method

.method private handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V
    .locals 4
    .param p1, "contextHubId"    # I
    .param p2, "result"    # I
    .param p3, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;

    .line 535
    if-nez p3, :cond_0

    .line 536
    const-string v0, "ContextHubService"

    const-string v1, "Nanoapp binary field was null for a load transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 540
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 541
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 542
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    .line 543
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    .line 542
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v1

    .line 544
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

    .line 546
    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-direct {p0, v2, p1, v3, v0}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 547
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

    .line 609
    .local p2, "nanoAppInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    nop

    .line 610
    invoke-static {p2}, Lcom/android/server/location/ContextHubServiceUtil;->createNanoAppStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 612
    .local v0, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/NanoAppStateManager;->updateCache(ILjava/util/List;)V

    .line 613
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->onQueryResponse(Ljava/util/List;)V

    .line 614
    return-void
.end method

.method private handleTransactionResultCallback(III)V
    .locals 1
    .param p1, "contextHubId"    # I
    .param p2, "transactionId"    # I
    .param p3, "result"    # I

    .line 568
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/location/ContextHubTransactionManager;->onTransactionResponse(II)V

    .line 569
    return-void
.end method

.method private handleUnloadResponseOldApi(II)V
    .locals 3
    .param p1, "contextHubId"    # I
    .param p2, "result"    # I

    .line 555
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 556
    .local v0, "data":[B
    int-to-byte v1, p2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 557
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 558
    return-void
.end method

.method private isValidContextHubId(I)Z
    .locals 2
    .param p1, "contextHubId"    # I

    .line 621
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

    .line 819
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$dump$2(Landroid/util/proto/ProtoOutputStream;Landroid/hardware/location/ContextHubInfo;)V
    .locals 2
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;

    .line 830
    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 831
    .local v0, "token":J
    invoke-virtual {p1, p0}, Landroid/hardware/location/ContextHubInfo;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 832
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 833
    return-void
.end method

.method static synthetic lambda$findNanoAppOnHub$0(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .locals 1
    .param p0, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .param p1, "foundInstances"    # Ljava/util/ArrayList;
    .param p2, "info"    # Landroid/hardware/location/NanoAppInstanceInfo;

    .line 435
    invoke-virtual {p0, p2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_0
    return-void
.end method

.method private onMessageReceiptOldApi(III[B)I
    .locals 9
    .param p1, "msgType"    # I
    .param p2, "contextHubHandle"    # I
    .param p3, "appInstance"    # I
    .param p4, "data"    # [B

    .line 848
    if-nez p4, :cond_0

    .line 849
    const/4 v0, -0x1

    return v0

    .line 852
    :cond_0
    const/4 v0, 0x0

    .line 853
    .local v0, "msgVersion":I
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 860
    .local v1, "callbacksCount":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 864
    return v2

    .line 867
    :cond_1
    new-instance v3, Landroid/hardware/location/ContextHubMessage;

    invoke-direct {v3, p1, v0, p4}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    .line 868
    .local v3, "msg":Landroid/hardware/location/ContextHubMessage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 869
    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/IContextHubCallback;

    .line 871
    .local v5, "callback":Landroid/hardware/location/IContextHubCallback;
    :try_start_0
    invoke-interface {v5, p2, p3, v3}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    goto :goto_1

    .line 872
    :catch_0
    move-exception v6

    .line 873
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

    .line 874
    nop

    .line 868
    .end local v5    # "callback":Landroid/hardware/location/IContextHubCallback;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 877
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 878
    return v2
.end method

.method private queryNanoAppsInternal(I)I
    .locals 3
    .param p1, "contextHubId"    # I

    .line 460
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x1

    return v0

    .line 464
    :cond_0
    nop

    .line 465
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v0

    .line 466
    .local v0, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v1

    .line 469
    .local v1, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v2, v1}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 470
    const/4 v2, 0x0

    return v2
.end method

.method private sendLocationSettingUpdate()V
    .locals 3

    .line 921
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 922
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 924
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    .line 925
    nop

    .line 924
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/location/IContextHubWrapper;->onSettingChanged(BB)V

    .line 926
    return-void
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

    .line 638
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 639
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    if-eqz p2, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 647
    .local v0, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 643
    .end local v0    # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot register client with null callback"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
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

    .line 664
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 665
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 670
    .local v0, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 666
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

    .line 764
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 765
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 772
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 773
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 799
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string v1, "ContextHubService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 801
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 802
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 803
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubService;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 804
    return-void

    .line 801
    .end local v2    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    :cond_2
    const-string v0, "Dumping ContextHub Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    const-string v1, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    .line 814
    .local v2, "hubInfo":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 815
    .end local v2    # "hubInfo":Landroid/hardware/location/ContextHubInfo;
    goto :goto_1

    .line 816
    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    const-string v1, "=================== NANOAPPS ===================="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    new-instance v2, Lcom/android/server/location/-$$Lambda$ContextHubService$HPGvKluemttyVfAcSog-eXiJyHE;

    invoke-direct {v2, p2}, Lcom/android/server/location/-$$Lambda$ContextHubService$HPGvKluemttyVfAcSog-eXiJyHE;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 821
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    const-string v0, "=================== CLIENTS ===================="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 826
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

    .line 740
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 741
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 748
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 749
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

    .line 430
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v0, "foundInstances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    new-instance v2, Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;

    invoke-direct {v2, p2, v0}, Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;-><init>(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 441
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 442
    .local v1, "retArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 443
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
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

    .line 282
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 283
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

    .line 288
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 289
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
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

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 294
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

    .line 304
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 305
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

    .line 422
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 424
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

    .line 370
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 371
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 372
    return v1

    .line 374
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    const-string v2, "ContextHubService"

    if-nez v0, :cond_1

    .line 375
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

    .line 376
    return v1

    .line 378
    :cond_1
    if-nez p2, :cond_2

    .line 379
    const-string v0, "NanoApp cannot be null in loadNanoApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return v1

    .line 384
    :cond_2
    new-instance v0, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/location/NanoAppBinary;-><init>([B)V

    .line 385
    .local v0, "nanoAppBinary":Landroid/hardware/location/NanoAppBinary;
    nop

    .line 386
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubService;->createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 388
    .local v1, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/location/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v2

    .line 391
    .local v2, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v3, v2}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 392
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

    .line 686
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 687
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    return-void

    .line 691
    :cond_0
    if-nez p3, :cond_1

    .line 692
    const-string v0, "ContextHubService"

    const-string v1, "NanoAppBinary cannot be null in loadNanoAppOnHub"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 695
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 700
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 701
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

    .line 786
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 787
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 794
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 795
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

    .line 272
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 273
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added callback, total callbacks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 276
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
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

    .line 476
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 477
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 478
    return v1

    .line 480
    :cond_0
    const-string v0, "ContextHubService"

    if-nez p3, :cond_1

    .line 481
    const-string v2, "ContextHubMessage cannot be null in sendMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return v1

    .line 484
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v2

    if-nez v2, :cond_2

    .line 485
    const-string v2, "ContextHubMessage message body cannot be null in sendMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return v1

    .line 488
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 489
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

    .line 490
    return v1

    .line 493
    :cond_3
    const/4 v2, 0x0

    .line 494
    .local v2, "success":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v1, :cond_6

    .line 495
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    move v2, v3

    goto :goto_2

    .line 498
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

    .line 501
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/server/location/ContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v5

    .line 502
    .local v5, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-eqz v5, :cond_8

    .line 503
    nop

    .line 504
    invoke-virtual {v5}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v6

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v0

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v8

    .line 503
    invoke-static {v6, v7, v0, v8}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    .line 506
    .local v0, "message":Landroid/hardware/location/NanoAppMessage;
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/IContextHubClient;

    .line 507
    .local v6, "client":Landroid/hardware/location/IContextHubClient;
    invoke-interface {v6, v0}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    move v3, v4

    :goto_1
    move v2, v3

    .line 509
    .end local v0    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local v6    # "client":Landroid/hardware/location/IContextHubClient;
    goto :goto_2

    .line 510
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

    .line 515
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

    .line 397
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 398
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 399
    return v1

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    .line 403
    invoke-virtual {v0, p1}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    .line 404
    .local v0, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-nez v0, :cond_1

    .line 405
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

    .line 406
    return v1

    .line 409
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v1

    .line 410
    .local v1, "contextHubId":I
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v2

    .line 411
    .local v2, "nanoAppId":J
    nop

    .line 412
    invoke-direct {p0, v1}, Lcom/android/server/location/ContextHubService;->createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v4

    .line 413
    .local v4, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/server/location/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v5

    .line 416
    .local v5, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v6, v5}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 417
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

    .line 716
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 717
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 724
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 725
    return-void
.end method
