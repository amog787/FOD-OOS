.class Lcom/android/server/location/ContextHubService$1;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ContextHubService;

.field final synthetic val$contextHubId:I


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/ContextHubService;

    .line 204
    iput-object p1, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    iput p2, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHubReset()V
    .locals 5

    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 218
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    iget v2, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-static {v1, v3, v2, v4, v0}, Lcom/android/server/location/ContextHubService;->access$600(Lcom/android/server/location/ContextHubService;III[B)I

    .line 219
    return-void
.end method

.method public onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .locals 5
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 207
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/ContextHubService;->access$500(Lcom/android/server/location/ContextHubService;)Lcom/android/server/location/NanoAppStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    .line 208
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    .line 207
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v0

    .line 210
    .local v0, "nanoAppHandle":I
    iget-object v1, p0, Lcom/android/server/location/ContextHubService$1;->this$0:Lcom/android/server/location/ContextHubService;

    .line 211
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v2

    iget v3, p0, Lcom/android/server/location/ContextHubService$1;->val$contextHubId:I

    .line 212
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v4

    .line 210
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/server/location/ContextHubService;->access$600(Lcom/android/server/location/ContextHubService;III[B)I

    .line 213
    return-void
.end method

.method public onNanoAppAborted(JI)V
    .locals 0
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 223
    return-void
.end method

.method public onNanoAppDisabled(J)V
    .locals 0
    .param p1, "nanoAppId"    # J

    .line 239
    return-void
.end method

.method public onNanoAppEnabled(J)V
    .locals 0
    .param p1, "nanoAppId"    # J

    .line 235
    return-void
.end method

.method public onNanoAppLoaded(J)V
    .locals 0
    .param p1, "nanoAppId"    # J

    .line 227
    return-void
.end method

.method public onNanoAppUnloaded(J)V
    .locals 0
    .param p1, "nanoAppId"    # J

    .line 231
    return-void
.end method
