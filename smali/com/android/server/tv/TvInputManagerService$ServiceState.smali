.class final Lcom/android/server/tv/TvInputManagerService$ServiceState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceState"
.end annotation


# instance fields
.field private bound:Z

.field private callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

.field private final component:Landroid/content/ComponentName;

.field private final connection:Landroid/content/ServiceConnection;

.field private final hardwareInputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final isHardware:Z

.field private reconnecting:Z

.field private service:Landroid/media/tv/ITvInputService;

.field private final sessionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 2
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 2206
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    .line 2199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    .line 2207
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    .line 2208
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;

    .line 2209
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/tv/TvInputManagerService;->access$6700(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    .line 2210
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Landroid/content/ComponentName;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/tv/TvInputManagerService$1;

    .line 2194
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2194
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2194
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2194
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p1, "x1"    # Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    .line 2194
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2194
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p1, "x1"    # Landroid/media/tv/ITvInputService;

    .line 2194
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2194
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2194
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p1, "x1"    # Z

    .line 2194
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2194
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2194
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p1, "x1"    # Z

    .line 2194
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2194
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    return-object v0
.end method
