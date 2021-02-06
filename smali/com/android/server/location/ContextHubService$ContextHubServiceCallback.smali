.class Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;
.super Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextHubServiceCallback"
.end annotation


# instance fields
.field private final mContextHubId:I

.field final synthetic this$0:Lcom/android/server/location/ContextHubService;


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubService;I)V
    .locals 0
    .param p2, "contextHubId"    # I

    .line 119
    iput-object p1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    invoke-direct {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;-><init>()V

    .line 120
    iput p2, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    .line 121
    return-void
.end method


# virtual methods
.method public handleAppAbort(JI)V
    .locals 2
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 140
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/location/ContextHubService;->access$300(Lcom/android/server/location/ContextHubService;IJI)V

    .line 141
    return-void
.end method

.method public handleAppsInfo(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p1, "nanoAppInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubService;->access$400(Lcom/android/server/location/ContextHubService;ILjava/util/List;)V

    .line 146
    return-void
.end method

.method public handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 2
    .param p1, "message"    # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 125
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubService;->access$000(Lcom/android/server/location/ContextHubService;ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    .line 126
    return-void
.end method

.method public handleHubEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .line 135
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubService;->access$200(Lcom/android/server/location/ContextHubService;II)V

    .line 136
    return-void
.end method

.method public handleTxnResult(II)V
    .locals 2
    .param p1, "transactionId"    # I
    .param p2, "result"    # I

    .line 130
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/location/ContextHubService;->access$100(Lcom/android/server/location/ContextHubService;III)V

    .line 131
    return-void
.end method
