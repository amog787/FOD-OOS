.class public abstract Lcom/android/server/inputmethod/InputMethodManagerInternal;
.super Ljava/lang/Object;
.source "InputMethodManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;
    }
.end annotation


# static fields
.field private static final NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerInternal$1;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal$1;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;->NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/inputmethod/InputMethodManagerInternal;
    .locals 2

    .line 185
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 186
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 187
    .local v0, "instance":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;->NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    :goto_0
    return-object v1
.end method


# virtual methods
.method public abstract getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputMethodListAsUser(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hideCurrentInputMethod(I)V
.end method

.method public abstract onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
.end method

.method public abstract registerInputMethodListListener(Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
.end method

.method public abstract removeImeSurface()V
.end method

.method public abstract reportImeControl(Landroid/os/IBinder;)V
.end method

.method public abstract setInteractive(Z)V
.end method

.method public abstract switchToInputMethod(Ljava/lang/String;I)Z
.end method

.method public abstract transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
.end method
