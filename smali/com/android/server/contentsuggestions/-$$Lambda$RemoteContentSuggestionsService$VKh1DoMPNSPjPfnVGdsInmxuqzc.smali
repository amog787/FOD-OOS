.class public final synthetic Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/graphics/GraphicBuffer;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;->f$0:I

    iput-object p2, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;->f$1:Landroid/graphics/GraphicBuffer;

    iput p3, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;->f$2:I

    iput-object p4, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 4

    iget v0, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;->f$0:I

    iget-object v1, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;->f$1:Landroid/graphics/GraphicBuffer;

    iget v2, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;->f$2:I

    iget-object v3, p0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;->f$3:Landroid/os/Bundle;

    check-cast p1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->lambda$provideContextImage$0(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;Landroid/service/contentsuggestions/IContentSuggestionsService;)V

    return-void
.end method
