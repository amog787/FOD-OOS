.class public final synthetic Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$FzdH_f6FO3SF7BWGUjwz4-jY7oI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$FzdH_f6FO3SF7BWGUjwz4-jY7oI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$FzdH_f6FO3SF7BWGUjwz4-jY7oI;

    invoke-direct {v0}, Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$FzdH_f6FO3SF7BWGUjwz4-jY7oI;-><init>()V

    sput-object v0, Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$FzdH_f6FO3SF7BWGUjwz4-jY7oI;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$FzdH_f6FO3SF7BWGUjwz4-jY7oI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/server/people/prediction/SharesheetModelScorer;->lambda$computeScore$0(Landroid/util/Pair;)J

    move-result-wide v0

    return-wide v0
.end method
