.class public final synthetic Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$HRhV1xJrd8G3UdS1tXl1vXSbjt4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$HRhV1xJrd8G3UdS1tXl1vXSbjt4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$HRhV1xJrd8G3UdS1tXl1vXSbjt4;

    invoke-direct {v0}, Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$HRhV1xJrd8G3UdS1tXl1vXSbjt4;-><init>()V

    sput-object v0, Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$HRhV1xJrd8G3UdS1tXl1vXSbjt4;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$HRhV1xJrd8G3UdS1tXl1vXSbjt4;

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

    invoke-static {p1}, Lcom/android/server/people/prediction/SharesheetModelScorer;->lambda$postProcess$1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
