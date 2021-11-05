.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Landroid/app/ActivityManager$TaskDescription;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/Task;->lambda$TUGPkEKamN60PF6hJQxUwDBjU-M(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
