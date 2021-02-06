.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$euuUV-nmBEuGSQnmknMVANWcP88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$euuUV-nmBEuGSQnmknMVANWcP88;->f$0:J

    iput p3, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$euuUV-nmBEuGSQnmknMVANWcP88;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Landroid/hardware/location/IContextHubClientCallback;)V
    .locals 3

    iget-wide v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$euuUV-nmBEuGSQnmknMVANWcP88;->f$0:J

    iget v2, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$euuUV-nmBEuGSQnmknMVANWcP88;->f$1:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/location/ContextHubClientBroker;->lambda$onNanoAppAborted$8(JILandroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method
