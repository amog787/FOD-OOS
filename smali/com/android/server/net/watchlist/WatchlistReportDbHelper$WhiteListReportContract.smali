.class Lcom/android/server/net/watchlist/WatchlistReportDbHelper$WhiteListReportContract;
.super Ljava/lang/Object;
.source "WatchlistReportDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WhiteListReportContract"
.end annotation


# static fields
.field private static final APP_DIGEST:Ljava/lang/String; = "app_digest"

.field private static final CNC_DOMAIN:Ljava/lang/String; = "cnc_domain"

.field private static final TABLE:Ljava/lang/String; = "records"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
