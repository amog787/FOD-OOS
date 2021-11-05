.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$cDcvMzGxc6XW13Q8FrU5X4DagqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$cDcvMzGxc6XW13Q8FrU5X4DagqE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$cDcvMzGxc6XW13Q8FrU5X4DagqE;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$cDcvMzGxc6XW13Q8FrU5X4DagqE;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$cDcvMzGxc6XW13Q8FrU5X4DagqE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$cDcvMzGxc6XW13Q8FrU5X4DagqE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    check-cast p2, Lcom/android/server/wm/Task;

    check-cast p3, Lcom/android/server/wm/Task;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->lambda$cDcvMzGxc6XW13Q8FrU5X4DagqE(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;I)V

    return-void
.end method
