.class Lcom/android/server/location/ContextHubService$5;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubService;->createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
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

    .line 355
    iput-object p1, p0, Lcom/android/server/location/ContextHubService$5;->this$0:Lcom/android/server/location/ContextHubService;

    iput p2, p0, Lcom/android/server/location/ContextHubService$5;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .locals 5
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 362
    .local p2, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 363
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/server/location/ContextHubService$5;->this$0:Lcom/android/server/location/ContextHubService;

    iget v2, p0, Lcom/android/server/location/ContextHubService$5;->val$contextHubId:I

    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-static {v1, v3, v2, v4, v0}, Lcom/android/server/location/ContextHubService;->access$700(Lcom/android/server/location/ContextHubService;III[B)I

    .line 364
    return-void
.end method

.method public onTransactionComplete(I)V
    .locals 0
    .param p1, "result"    # I

    .line 358
    return-void
.end method
