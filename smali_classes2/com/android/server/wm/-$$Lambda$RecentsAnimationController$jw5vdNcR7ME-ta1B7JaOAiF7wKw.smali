.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$jw5vdNcR7ME-ta1B7JaOAiF7wKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$jw5vdNcR7ME-ta1B7JaOAiF7wKw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$jw5vdNcR7ME-ta1B7JaOAiF7wKw;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$jw5vdNcR7ME-ta1B7JaOAiF7wKw;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$jw5vdNcR7ME-ta1B7JaOAiF7wKw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$jw5vdNcR7ME-ta1B7JaOAiF7wKw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->lambda$isAnimatingApp$5(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
