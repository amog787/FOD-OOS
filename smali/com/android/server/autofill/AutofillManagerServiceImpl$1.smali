.class Lcom/android/server/autofill/AutofillManagerServiceImpl$1;
.super Ljava/lang/Object;
.source "AutofillManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1127
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceDied(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 1130
    const-string v0, "AutofillManagerServiceImpl"

    const-string/jumbo v1, "remote augmented autofill service died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1132
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$100(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 1133
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->destroy()V

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$102(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 1137
    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 1127
    check-cast p1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->onServiceDied(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    return-void
.end method
