.class Lcom/android/server/location/ContextHubTransactionManager$5;
.super Lcom/android/server/location/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ContextHubTransactionManager;

.field final synthetic val$contextHubId:I

.field final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubTransactionManager;IIILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/ContextHubTransactionManager;
    .param p2, "id"    # I
    .param p3, "type"    # I

    .line 264
    iput-object p1, p0, Lcom/android/server/location/ContextHubTransactionManager$5;->this$0:Lcom/android/server/location/ContextHubTransactionManager;

    iput p4, p0, Lcom/android/server/location/ContextHubTransactionManager$5;->val$contextHubId:I

    iput-object p5, p0, Lcom/android/server/location/ContextHubTransactionManager$5;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-direct {p0, p2, p3}, Lcom/android/server/location/ContextHubServiceTransaction;-><init>(II)V

    return-void
.end method


# virtual methods
.method onQueryResponse(ILjava/util/List;)V
    .locals 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 284
    .local p2, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager$5;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubTransactionCallback;->onQueryResponse(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while calling client onQueryComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method onTransact()I
    .locals 3

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubTransactionManager$5;->this$0:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-static {v0}, Lcom/android/server/location/ContextHubTransactionManager;->access$000(Lcom/android/server/location/ContextHubTransactionManager;)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/ContextHubTransactionManager$5;->val$contextHubId:I

    invoke-interface {v0, v1}, Landroid/hardware/contexthub/V1_0/IContexthub;->queryApps(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while trying to query for nanoapps"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    const/4 v1, 0x1

    return v1
.end method

.method onTransactionComplete(I)V
    .locals 1
    .param p1, "result"    # I

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/ContextHubTransactionManager$5;->onQueryResponse(ILjava/util/List;)V

    .line 278
    return-void
.end method
