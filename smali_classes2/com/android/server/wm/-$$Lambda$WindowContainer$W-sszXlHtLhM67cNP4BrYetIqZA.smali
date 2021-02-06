.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowContainer$W-sszXlHtLhM67cNP4BrYetIqZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$W-sszXlHtLhM67cNP4BrYetIqZA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$W-sszXlHtLhM67cNP4BrYetIqZA;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowContainer$W-sszXlHtLhM67cNP4BrYetIqZA;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$W-sszXlHtLhM67cNP4BrYetIqZA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$W-sszXlHtLhM67cNP4BrYetIqZA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/WindowContainer;->lambda$applyAnimationUnchecked$13(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
