.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppTransitionController$o_nkoN7a-ZHaSAgJCQZcboKz9Ig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$o_nkoN7a-ZHaSAgJCQZcboKz9Ig;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$o_nkoN7a-ZHaSAgJCQZcboKz9Ig;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$o_nkoN7a-ZHaSAgJCQZcboKz9Ig;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$o_nkoN7a-ZHaSAgJCQZcboKz9Ig;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$o_nkoN7a-ZHaSAgJCQZcboKz9Ig;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/AppTransitionController;->lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
