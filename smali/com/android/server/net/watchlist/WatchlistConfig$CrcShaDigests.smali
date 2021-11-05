.class Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;
.super Ljava/lang/Object;
.source "WatchlistConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/watchlist/WatchlistConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrcShaDigests"
.end annotation


# instance fields
.field public final crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

.field public final sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;


# direct methods
.method constructor <init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V
    .locals 0
    .param p1, "crc32s"    # Lcom/android/server/net/watchlist/HarmfulCrcs;
    .param p2, "sha256Digests"    # Lcom/android/server/net/watchlist/HarmfulDigests;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    .line 73
    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    .line 74
    return-void
.end method
