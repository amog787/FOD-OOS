.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$B0oR30xfeM300kIzUVaV_zUNLCg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$B0oR30xfeM300kIzUVaV_zUNLCg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$B0oR30xfeM300kIzUVaV_zUNLCg;

    invoke-direct {v0}, Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$B0oR30xfeM300kIzUVaV_zUNLCg;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$B0oR30xfeM300kIzUVaV_zUNLCg;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$B0oR30xfeM300kIzUVaV_zUNLCg;

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

    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->lambda$static$0(Landroid/content/Context;)I

    move-result p1

    return p1
.end method
