.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/ContextHubClientBroker;

.field private final synthetic f$1:J

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/ContextHubClientBroker;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;->f$0:Lcom/android/server/location/ContextHubClientBroker;

    iput-wide p2, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;->f$1:J

    iput p4, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;->f$0:Lcom/android/server/location/ContextHubClientBroker;

    iget-wide v1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;->f$1:J

    iget v3, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;->f$2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/ContextHubClientBroker;->lambda$onNanoAppAborted$9$ContextHubClientBroker(JI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
