.class Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityDiagnosticsCallbackInfo"
.end annotation


# instance fields
.field private final mCallingPackageName:Ljava/lang/String;

.field private final mCb:Landroid/net/IConnectivityDiagnosticsCallback;

.field private final mRequestInfo:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/IConnectivityDiagnosticsCallback;Lcom/android/server/ConnectivityService$NetworkRequestInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "cb"    # Landroid/net/IConnectivityDiagnosticsCallback;
    .param p3, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .line 8387
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8388
    iput-object p2, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mCb:Landroid/net/IConnectivityDiagnosticsCallback;

    .line 8389
    iput-object p3, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mRequestInfo:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 8390
    iput-object p4, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mCallingPackageName:Ljava/lang/String;

    .line 8391
    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Landroid/net/IConnectivityDiagnosticsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    .line 8378
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mCb:Landroid/net/IConnectivityDiagnosticsCallback;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    .line 8378
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mRequestInfo:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    .line 8378
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mCallingPackageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 8395
    const-string v0, "ConnectivityDiagnosticsCallback IBinder died."

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 8396
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->mCb:Landroid/net/IConnectivityDiagnosticsCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->unregisterConnectivityDiagnosticsCallback(Landroid/net/IConnectivityDiagnosticsCallback;)V

    .line 8397
    return-void
.end method
