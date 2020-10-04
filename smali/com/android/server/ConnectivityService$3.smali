.class Lcom/android/server/ConnectivityService$3;
.super Lcom/android/server/connectivity/tethering/TetheringDependencies;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->makeTethering()Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 1146
    iput-object p1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultNetworkRequest()Landroid/net/NetworkRequest;
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method public isTetheringSupported()Z
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    return v0
.end method
