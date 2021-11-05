.class final Lcom/android/server/tv/TvInputManagerService$SessionState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionState"
.end annotation


# instance fields
.field private final callingPid:I

.field private final callingUid:I

.field private final client:Landroid/media/tv/ITvInputClient;

.field private final componentName:Landroid/content/ComponentName;

.field private hardwareSessionToken:Landroid/os/IBinder;

.field private final inputId:Ljava/lang/String;

.field private final isRecordingSession:Z

.field private logUri:Landroid/net/Uri;

.field private final seq:I

.field private session:Landroid/media/tv/ITvInputSession;

.field private final sessionId:Ljava/lang/String;

.field private final sessionToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field private final userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIIILjava/lang/String;)V
    .locals 0
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "inputId"    # Ljava/lang/String;
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "isRecordingSession"    # Z
    .param p6, "client"    # Landroid/media/tv/ITvInputClient;
    .param p7, "seq"    # I
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "userId"    # I
    .param p11, "sessionId"    # Ljava/lang/String;

    .line 2340
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2341
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 2342
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 2343
    iput-object p4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    .line 2344
    iput-boolean p5, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 2345
    iput-object p6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 2346
    iput p7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 2347
    iput p8, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    .line 2348
    iput p9, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingPid:I

    .line 2349
    iput p10, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 2350
    iput-object p11, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    .line 2351
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIIILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/content/ComponentName;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Landroid/media/tv/ITvInputClient;
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # Ljava/lang/String;
    .param p12, "x11"    # Lcom/android/server/tv/TvInputManagerService$1;

    .line 2322
    invoke-direct/range {p0 .. p11}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p1, "x1"    # Landroid/media/tv/ITvInputSession;

    .line 2322
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 2322
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingPid:I

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2322
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->logUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 2355
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2356
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 2357
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1, p0}, Lcom/android/server/tv/TvInputManagerService;->access$7000(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 2358
    monitor-exit v0

    .line 2359
    return-void

    .line 2358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
