.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

.field public final synthetic f$1:Landroid/service/autofill/IInlineSuggestionUi;

.field public final synthetic f$2:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;->f$1:Landroid/service/autofill/IInlineSuggestionUi;

    iput-object p3, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;->f$2:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iput p4, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;->f$3:I

    iput p5, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;->f$1:Landroid/service/autofill/IInlineSuggestionUi;

    iget-object v2, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;->f$2:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iget v3, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;->f$3:I

    iget v4, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->lambda$onContent$2$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    return-void
.end method
