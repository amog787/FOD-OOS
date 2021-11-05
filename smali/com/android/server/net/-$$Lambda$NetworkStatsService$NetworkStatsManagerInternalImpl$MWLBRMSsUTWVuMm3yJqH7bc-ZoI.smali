.class public final synthetic Lcom/android/server/net/-$$Lambda$NetworkStatsService$NetworkStatsManagerInternalImpl$MWLBRMSsUTWVuMm3yJqH7bc-ZoI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$NetworkStatsManagerInternalImpl$MWLBRMSsUTWVuMm3yJqH7bc-ZoI;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$NetworkStatsManagerInternalImpl$MWLBRMSsUTWVuMm3yJqH7bc-ZoI;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$NetworkStatsManagerInternalImpl$MWLBRMSsUTWVuMm3yJqH7bc-ZoI;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$NetworkStatsManagerInternalImpl$MWLBRMSsUTWVuMm3yJqH7bc-ZoI;->f$1:J

    check-cast p1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->lambda$setStatsProviderLimitAsync$0(Ljava/lang/String;JLcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V

    return-void
.end method
