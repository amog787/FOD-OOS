.class public final synthetic Lcom/android/server/net/-$$Lambda$NetworkStatsService$-IJG-2djYyEsmGNuCKyh0LuHG28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/IndentingPrintWriter;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$-IJG-2djYyEsmGNuCKyh0LuHG28;->f$0:Lcom/android/internal/util/IndentingPrintWriter;

    iput-boolean p2, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$-IJG-2djYyEsmGNuCKyh0LuHG28;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$-IJG-2djYyEsmGNuCKyh0LuHG28;->f$0:Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v1, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$-IJG-2djYyEsmGNuCKyh0LuHG28;->f$1:Z

    check-cast p1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;

    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkStatsService;->lambda$dump$2(Lcom/android/internal/util/IndentingPrintWriter;ZLcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V

    return-void
.end method
