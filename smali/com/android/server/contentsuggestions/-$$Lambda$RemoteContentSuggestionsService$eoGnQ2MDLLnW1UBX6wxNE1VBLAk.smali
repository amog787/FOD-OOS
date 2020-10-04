.class public final synthetic Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$eoGnQ2MDLLnW1UBX6wxNE1VBLAk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field private final synthetic f$0:Landroid/app/contentsuggestions/ClassificationsRequest;

.field private final synthetic f$1:Landroid/app/contentsuggestions/IClassificationsCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$eoGnQ2MDLLnW1UBX6wxNE1VBLAk;->f$0:Landroid/app/contentsuggestions/ClassificationsRequest;

    iput-object p2, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$eoGnQ2MDLLnW1UBX6wxNE1VBLAk;->f$1:Landroid/app/contentsuggestions/IClassificationsCallback;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$eoGnQ2MDLLnW1UBX6wxNE1VBLAk;->f$0:Landroid/app/contentsuggestions/ClassificationsRequest;

    iget-object v1, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$eoGnQ2MDLLnW1UBX6wxNE1VBLAk;->f$1:Landroid/app/contentsuggestions/IClassificationsCallback;

    check-cast p1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    invoke-static {v0, v1, p1}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->lambda$classifyContentSelections$2(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V

    return-void
.end method
