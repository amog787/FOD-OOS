.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentsAnimation$L-oo1O0uvOIOr4MDh9QYSeVU09U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentsAnimation$L-oo1O0uvOIOr4MDh9QYSeVU09U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$L-oo1O0uvOIOr4MDh9QYSeVU09U;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$L-oo1O0uvOIOr4MDh9QYSeVU09U;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$L-oo1O0uvOIOr4MDh9QYSeVU09U;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentsAnimation$L-oo1O0uvOIOr4MDh9QYSeVU09U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/RecentsAnimation;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-static {p1, p2}, Lcom/android/server/wm/RecentsAnimation;->lambda$L-oo1O0uvOIOr4MDh9QYSeVU09U(Lcom/android/server/wm/RecentsAnimation;Lcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
