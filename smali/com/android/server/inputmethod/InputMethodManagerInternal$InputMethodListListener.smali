.class public interface abstract Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;
.super Ljava/lang/Object;
.source "InputMethodManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputMethodListListener"
.end annotation


# virtual methods
.method public abstract onInputMethodListUpdated(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation
.end method
