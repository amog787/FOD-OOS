.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppTransitionController$ESsBJ2royCDDfelW3z7cgYH5q2I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$ESsBJ2royCDDfelW3z7cgYH5q2I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$ESsBJ2royCDDfelW3z7cgYH5q2I;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$ESsBJ2royCDDfelW3z7cgYH5q2I;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$ESsBJ2royCDDfelW3z7cgYH5q2I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$ESsBJ2royCDDfelW3z7cgYH5q2I;

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

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-static {p1}, Lcom/android/server/wm/AppTransitionController;->lambda$findAnimLayoutParamsToken$1(Lcom/android/server/wm/AppWindowToken;)Z

    move-result p1

    return p1
.end method
