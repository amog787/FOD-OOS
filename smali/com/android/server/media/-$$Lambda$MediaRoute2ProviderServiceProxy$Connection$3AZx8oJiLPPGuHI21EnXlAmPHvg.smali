.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$3AZx8oJiLPPGuHI21EnXlAmPHvg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

.field public final synthetic f$1:Landroid/media/RoutingSessionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$3AZx8oJiLPPGuHI21EnXlAmPHvg;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    iput-object p2, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$3AZx8oJiLPPGuHI21EnXlAmPHvg;->f$1:Landroid/media/RoutingSessionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$3AZx8oJiLPPGuHI21EnXlAmPHvg;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    iget-object v1, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$3AZx8oJiLPPGuHI21EnXlAmPHvg;->f$1:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->lambda$postSessionReleased$5$MediaRoute2ProviderServiceProxy$Connection(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method
