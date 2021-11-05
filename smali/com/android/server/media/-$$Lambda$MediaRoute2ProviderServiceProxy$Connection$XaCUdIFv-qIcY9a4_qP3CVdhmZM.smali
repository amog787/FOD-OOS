.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$XaCUdIFv-qIcY9a4_qP3CVdhmZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/media/RoutingSessionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;JLandroid/media/RoutingSessionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$XaCUdIFv-qIcY9a4_qP3CVdhmZM;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    iput-wide p2, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$XaCUdIFv-qIcY9a4_qP3CVdhmZM;->f$1:J

    iput-object p4, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$XaCUdIFv-qIcY9a4_qP3CVdhmZM;->f$2:Landroid/media/RoutingSessionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$XaCUdIFv-qIcY9a4_qP3CVdhmZM;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    iget-wide v1, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$XaCUdIFv-qIcY9a4_qP3CVdhmZM;->f$1:J

    iget-object v3, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$Connection$XaCUdIFv-qIcY9a4_qP3CVdhmZM;->f$2:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->lambda$postSessionCreated$3$MediaRoute2ProviderServiceProxy$Connection(JLandroid/media/RoutingSessionInfo;)V

    return-void
.end method
