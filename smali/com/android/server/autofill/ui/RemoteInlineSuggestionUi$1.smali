.class Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;
.super Landroid/service/autofill/ISurfacePackageResultCallback$Stub;
.source "RemoteInlineSuggestionUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleRequestSurfacePackage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 154
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-direct {p0}, Landroid/service/autofill/ISurfacePackageResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResult$0$RemoteInlineSuggestionUi$1(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 3
    .param p1, "result"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 158
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending refreshed SurfacePackage to IME"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$500(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Lcom/android/internal/view/inline/IInlineContentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$300(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 161
    invoke-static {v2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$400(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)I

    move-result v2

    .line 160
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/view/inline/IInlineContentCallback;->onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    .line 162
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$600(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteException calling onContent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onResult(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 2
    .param p1, "result"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 157
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$1$BQphjwPc7EH4P2tQ7P4664BMxio;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$1$BQphjwPc7EH4P2tQ7P4664BMxio;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method
