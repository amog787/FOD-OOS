.class public final synthetic Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$yBUcRNgC_2SdMjBHdbSjb2l9-Rw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$yBUcRNgC_2SdMjBHdbSjb2l9-Rw;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$yBUcRNgC_2SdMjBHdbSjb2l9-Rw;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$handleShellCommandResetInputMethod$4(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V

    return-void
.end method
