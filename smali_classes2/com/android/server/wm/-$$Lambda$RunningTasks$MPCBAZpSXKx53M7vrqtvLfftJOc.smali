.class public final synthetic Lcom/android/server/wm/-$$Lambda$RunningTasks$MPCBAZpSXKx53M7vrqtvLfftJOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RunningTasks$MPCBAZpSXKx53M7vrqtvLfftJOc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RunningTasks$MPCBAZpSXKx53M7vrqtvLfftJOc;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RunningTasks$MPCBAZpSXKx53M7vrqtvLfftJOc;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RunningTasks$MPCBAZpSXKx53M7vrqtvLfftJOc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RunningTasks$MPCBAZpSXKx53M7vrqtvLfftJOc;

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

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-static {p1, p2}, Lcom/android/server/wm/RunningTasks;->lambda$static$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p1

    return p1
.end method
