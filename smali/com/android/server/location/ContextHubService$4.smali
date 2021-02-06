.class Lcom/android/server/location/ContextHubService$4;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubService;->createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
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

    .line 336
    iput-object p1, p0, Lcom/android/server/location/ContextHubService$4;->this$0:Lcom/android/server/location/ContextHubService;

    iput p2, p0, Lcom/android/server/location/ContextHubService$4;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p2, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    return-void
.end method

.method public onTransactionComplete(I)V
    .locals 2
    .param p1, "result"    # I

    .line 339
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$4;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$4;->val$contextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubService;->access$900(Lcom/android/server/location/ContextHubService;II)V

    .line 340
    return-void
.end method
