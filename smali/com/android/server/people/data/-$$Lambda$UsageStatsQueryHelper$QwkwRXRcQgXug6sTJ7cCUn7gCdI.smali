.class public final synthetic Lcom/android/server/people/data/-$$Lambda$UsageStatsQueryHelper$QwkwRXRcQgXug6sTJ7cCUn7gCdI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/-$$Lambda$UsageStatsQueryHelper$QwkwRXRcQgXug6sTJ7cCUn7gCdI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$UsageStatsQueryHelper$QwkwRXRcQgXug6sTJ7cCUn7gCdI;

    invoke-direct {v0}, Lcom/android/server/people/data/-$$Lambda$UsageStatsQueryHelper$QwkwRXRcQgXug6sTJ7cCUn7gCdI;-><init>()V

    sput-object v0, Lcom/android/server/people/data/-$$Lambda$UsageStatsQueryHelper$QwkwRXRcQgXug6sTJ7cCUn7gCdI;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$UsageStatsQueryHelper$QwkwRXRcQgXug6sTJ7cCUn7gCdI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/people/data/UsageStatsQueryHelper;->lambda$queryAppUsageStats$0(Ljava/lang/String;)Lcom/android/server/people/data/AppUsageStatsData;

    move-result-object p1

    return-object p1
.end method
