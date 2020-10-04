.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;

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

    invoke-static {p1}, Lcom/android/server/wm/AppTransitionController;->lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/AppWindowToken;)Z

    move-result p1

    return p1
.end method
