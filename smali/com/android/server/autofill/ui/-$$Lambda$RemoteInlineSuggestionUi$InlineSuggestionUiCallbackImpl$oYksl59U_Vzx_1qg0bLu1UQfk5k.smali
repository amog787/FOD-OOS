.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$oYksl59U_Vzx_1qg0bLu1UQfk5k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$oYksl59U_Vzx_1qg0bLu1UQfk5k;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$oYksl59U_Vzx_1qg0bLu1UQfk5k;->f$1:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$oYksl59U_Vzx_1qg0bLu1UQfk5k;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$oYksl59U_Vzx_1qg0bLu1UQfk5k;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$oYksl59U_Vzx_1qg0bLu1UQfk5k;->f$1:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$oYksl59U_Vzx_1qg0bLu1UQfk5k;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->lambda$onTransferTouchFocusToImeWindow$4$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(Landroid/os/IBinder;I)V

    return-void
.end method
