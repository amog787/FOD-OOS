.class Lcom/android/server/autofill/Session$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/Session;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/Session;

    .line 862
    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInlineUiHidden(Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 870
    iget-object v0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0, p1}, Lcom/android/server/autofill/Session;->access$1800(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V

    .line 871
    return-void
.end method

.method public notifyInlineUiShown(Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 865
    iget-object v0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0, p1}, Lcom/android/server/autofill/Session;->access$1700(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V

    .line 866
    return-void
.end method
