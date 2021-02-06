.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;->f$0:J

    iput p3, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;->f$0:J

    iget v2, p0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;->f$1:I

    check-cast p1, Lcom/android/server/location/ContextHubClientBroker;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/location/ContextHubClientManager;->lambda$onNanoAppAborted$3(JILcom/android/server/location/ContextHubClientBroker;)V

    return-void
.end method
