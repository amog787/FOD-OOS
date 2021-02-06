.class Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$NetworkReassignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestReassignment"
.end annotation


# instance fields
.field public final mNewNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

.field public final mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

.field public final mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "request"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7161
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7162
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7163
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mNewNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7164
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 7167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7168
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \u2192 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7169
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mNewNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7167
    return-object v0
.end method
