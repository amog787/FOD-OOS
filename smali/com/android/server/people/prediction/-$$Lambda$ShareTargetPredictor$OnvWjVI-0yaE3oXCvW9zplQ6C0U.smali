.class public final synthetic Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$OnvWjVI-0yaE3oXCvW9zplQ6C0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$OnvWjVI-0yaE3oXCvW9zplQ6C0U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$OnvWjVI-0yaE3oXCvW9zplQ6C0U;

    invoke-direct {v0}, Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$OnvWjVI-0yaE3oXCvW9zplQ6C0U;-><init>()V

    sput-object v0, Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$OnvWjVI-0yaE3oXCvW9zplQ6C0U;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$OnvWjVI-0yaE3oXCvW9zplQ6C0U;

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

    check-cast p1, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-static {p1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->lambda$predictTargets$0(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
