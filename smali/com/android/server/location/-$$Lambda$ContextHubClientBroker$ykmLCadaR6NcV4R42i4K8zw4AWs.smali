.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$ykmLCadaR6NcV4R42i4K8zw4AWs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$ykmLCadaR6NcV4R42i4K8zw4AWs;->f$0:J

    return-void
.end method


# virtual methods
.method public final accept(Landroid/hardware/location/IContextHubClientCallback;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$ykmLCadaR6NcV4R42i4K8zw4AWs;->f$0:J

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubClientBroker;->lambda$onNanoAppLoaded$2(JLandroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method
