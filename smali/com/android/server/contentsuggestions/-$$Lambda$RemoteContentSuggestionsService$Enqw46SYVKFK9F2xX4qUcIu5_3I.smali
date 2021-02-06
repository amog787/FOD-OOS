.class public final synthetic Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$Enqw46SYVKFK9F2xX4qUcIu5_3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$Enqw46SYVKFK9F2xX4qUcIu5_3I;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$Enqw46SYVKFK9F2xX4qUcIu5_3I;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$Enqw46SYVKFK9F2xX4qUcIu5_3I;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$Enqw46SYVKFK9F2xX4qUcIu5_3I;->f$1:Landroid/os/Bundle;

    check-cast p1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    invoke-static {v0, v1, p1}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->lambda$notifyInteraction$3(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/contentsuggestions/IContentSuggestionsService;)V

    return-void
.end method
