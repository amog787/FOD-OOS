.class public final synthetic Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$yUTbcaYlZCYTmagCkNJ3i2VCkY4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/contentsuggestions/SelectionsRequest;

.field public final synthetic f$1:Landroid/app/contentsuggestions/ISelectionsCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$yUTbcaYlZCYTmagCkNJ3i2VCkY4;->f$0:Landroid/app/contentsuggestions/SelectionsRequest;

    iput-object p2, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$yUTbcaYlZCYTmagCkNJ3i2VCkY4;->f$1:Landroid/app/contentsuggestions/ISelectionsCallback;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$yUTbcaYlZCYTmagCkNJ3i2VCkY4;->f$0:Landroid/app/contentsuggestions/SelectionsRequest;

    iget-object v1, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$yUTbcaYlZCYTmagCkNJ3i2VCkY4;->f$1:Landroid/app/contentsuggestions/ISelectionsCallback;

    check-cast p1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    invoke-static {v0, v1, p1}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->lambda$suggestContentSelections$1(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V

    return-void
.end method
