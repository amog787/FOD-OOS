.class Lcom/android/server/autofill/RemoteFillService$2;
.super Landroid/service/autofill/ISaveCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService;->lambda$onSaveRequest$3(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService;

.field final synthetic val$save:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 204
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$2;->this$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$2;->val$save:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/service/autofill/ISaveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 212
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$2;->val$save:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 213
    return-void
.end method

.method public onSuccess(Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 207
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$2;->val$save:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method
