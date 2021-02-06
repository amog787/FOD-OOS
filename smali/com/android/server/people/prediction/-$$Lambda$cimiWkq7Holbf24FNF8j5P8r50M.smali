.class public final synthetic Lcom/android/server/people/prediction/-$$Lambda$cimiWkq7Holbf24FNF8j5P8r50M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$cimiWkq7Holbf24FNF8j5P8r50M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/prediction/-$$Lambda$cimiWkq7Holbf24FNF8j5P8r50M;

    invoke-direct {v0}, Lcom/android/server/people/prediction/-$$Lambda$cimiWkq7Holbf24FNF8j5P8r50M;-><init>()V

    sput-object v0, Lcom/android/server/people/prediction/-$$Lambda$cimiWkq7Holbf24FNF8j5P8r50M;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$cimiWkq7Holbf24FNF8j5P8r50M;

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

    check-cast p1, Lcom/android/server/people/data/AppUsageStatsData;

    invoke-virtual {p1}, Lcom/android/server/people/data/AppUsageStatsData;->getLaunchCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
