.class public final synthetic Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$fNiO49PxZWEh32vCF6nuqhrDtOw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$fNiO49PxZWEh32vCF6nuqhrDtOw;->f$0:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$fNiO49PxZWEh32vCF6nuqhrDtOw;->f$0:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$handleShellCommandResetInputMethod$4(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)V

    return-void
.end method
