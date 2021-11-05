.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$S6t43cbsv7uQTbniMoTEFVB8Tfw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$S6t43cbsv7uQTbniMoTEFVB8Tfw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$S6t43cbsv7uQTbniMoTEFVB8Tfw;

    invoke-direct {v0}, Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$S6t43cbsv7uQTbniMoTEFVB8Tfw;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$S6t43cbsv7uQTbniMoTEFVB8Tfw;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$S6t43cbsv7uQTbniMoTEFVB8Tfw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->lambda$static$1(Landroid/content/Context;)I

    move-result p1

    return p1
.end method
