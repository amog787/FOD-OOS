.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JVx5SVc0AsTnwnLxXYLgV6AKHPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JVx5SVc0AsTnwnLxXYLgV6AKHPg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JVx5SVc0AsTnwnLxXYLgV6AKHPg;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JVx5SVc0AsTnwnLxXYLgV6AKHPg;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JVx5SVc0AsTnwnLxXYLgV6AKHPg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JVx5SVc0AsTnwnLxXYLgV6AKHPg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/RootWindowContainer;

    check-cast p2, Lcom/android/server/wm/Task;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->lambda$JVx5SVc0AsTnwnLxXYLgV6AKHPg(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Task;I)V

    return-void
.end method
