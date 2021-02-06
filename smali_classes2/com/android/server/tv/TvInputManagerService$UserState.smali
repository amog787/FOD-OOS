.class final Lcom/android/server/tv/TvInputManagerService$UserState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation


# instance fields
.field private final clientStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvInputManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final contentRatingSystemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private inputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/tv/TvInputManagerService$TvInputState;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/tv/ITvInputManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mainSessionToken:Landroid/os/IBinder;

.field private final packageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

.field private final serviceStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/tv/TvInputManagerService$ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvInputManagerService$SessionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 2252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 2226
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    .line 2229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    .line 2233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    .line 2236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 2239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 2242
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 2246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    .line 2253
    new-instance v0, Lcom/android/server/tv/PersistentDataStore;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tv/PersistentDataStore;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    .line 2254
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/tv/TvInputManagerService$1;

    .line 2221
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2221
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p1, "x1"    # Ljava/util/Map;

    .line 2221
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2221
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2221
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2221
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2221
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2221
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 2221
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2221
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2221
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2221
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    return-object v0
.end method
