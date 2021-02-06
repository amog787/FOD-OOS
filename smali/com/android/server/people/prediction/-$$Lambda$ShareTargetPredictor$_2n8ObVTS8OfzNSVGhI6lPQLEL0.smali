.class public final synthetic Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$_2n8ObVTS8OfzNSVGhI6lPQLEL0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$_2n8ObVTS8OfzNSVGhI6lPQLEL0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$_2n8ObVTS8OfzNSVGhI6lPQLEL0;

    invoke-direct {v0}, Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$_2n8ObVTS8OfzNSVGhI6lPQLEL0;-><init>()V

    sput-object v0, Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$_2n8ObVTS8OfzNSVGhI6lPQLEL0;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$_2n8ObVTS8OfzNSVGhI6lPQLEL0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    check-cast p2, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-static {p1, p2}, Lcom/android/server/people/prediction/ShareTargetPredictor;->lambda$sortTargets$1(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)I

    move-result p1

    return p1
.end method
