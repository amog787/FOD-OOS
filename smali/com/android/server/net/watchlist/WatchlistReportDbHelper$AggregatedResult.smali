.class public Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
.super Ljava/lang/Object;
.source "WatchlistReportDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AggregatedResult"
.end annotation


# instance fields
.field final appDigestCNCList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final appDigestList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final cncDomainVisited:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p2, "cncDomainVisited"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "appDigestList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "appDigestCNCList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestList:Ljava/util/Set;

    .line 91
    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->cncDomainVisited:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    .line 93
    return-void
.end method
