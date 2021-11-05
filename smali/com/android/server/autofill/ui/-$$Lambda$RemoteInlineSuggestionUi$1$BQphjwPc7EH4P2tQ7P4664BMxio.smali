.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$1$BQphjwPc7EH4P2tQ7P4664BMxio;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;

.field public final synthetic f$1:Landroid/view/SurfaceControlViewHost$SurfacePackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$1$BQphjwPc7EH4P2tQ7P4664BMxio;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$1$BQphjwPc7EH4P2tQ7P4664BMxio;->f$1:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$1$BQphjwPc7EH4P2tQ7P4664BMxio;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$1$BQphjwPc7EH4P2tQ7P4664BMxio;->f$1:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;->lambda$onResult$0$RemoteInlineSuggestionUi$1(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-void
.end method
