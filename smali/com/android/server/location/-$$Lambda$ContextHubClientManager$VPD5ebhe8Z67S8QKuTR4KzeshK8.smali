.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;->f$0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;->f$0:J

    check-cast p1, Lcom/android/server/location/ContextHubClientBroker;

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubClientManager;->lambda$onNanoAppLoaded$0(JLcom/android/server/location/ContextHubClientBroker;)V

    return-void
.end method
