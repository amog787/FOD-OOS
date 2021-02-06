.class Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;
.super Ljava/lang/Object;
.source "AutofillManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$InlineSuggestionRenderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InlineSuggestionRenderCallbacksImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    .line 1577
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p2, "x1"    # Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    .line 1577
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onServiceDied(Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remote service died: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$302(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;)Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 1585
    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 1577
    check-cast p1, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;->onServiceDied(Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;)V

    return-void
.end method
