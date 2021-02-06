.class public final synthetic Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$cwWIypDOMYGE9DeAeXTAf5svkjg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$cwWIypDOMYGE9DeAeXTAf5svkjg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$cwWIypDOMYGE9DeAeXTAf5svkjg;

    invoke-direct {v0}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$cwWIypDOMYGE9DeAeXTAf5svkjg;-><init>()V

    sput-object v0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$cwWIypDOMYGE9DeAeXTAf5svkjg;->INSTANCE:Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$cwWIypDOMYGE9DeAeXTAf5svkjg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/net/NetworkStats$Entry;

    check-cast p2, Landroid/net/NetworkStats$Entry;

    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$sliceNetworkStatsByUidAndFgbg$8(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    return-void
.end method
