.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$sZFHZi7b6t6yjfx5mx3RtECSlEU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$sZFHZi7b6t6yjfx5mx3RtECSlEU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$sZFHZi7b6t6yjfx5mx3RtECSlEU;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$sZFHZi7b6t6yjfx5mx3RtECSlEU;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$sZFHZi7b6t6yjfx5mx3RtECSlEU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$sZFHZi7b6t6yjfx5mx3RtECSlEU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$hasActivityToBeDrawn$0(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
