.class public final synthetic Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;->f$0:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    iput p2, p0, Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;->f$0:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    iget v1, p0, Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->lambda$getDigestFromUid$0$WatchlistLoggingHandler(ILjava/lang/Integer;)[B

    move-result-object p1

    return-object p1
.end method
