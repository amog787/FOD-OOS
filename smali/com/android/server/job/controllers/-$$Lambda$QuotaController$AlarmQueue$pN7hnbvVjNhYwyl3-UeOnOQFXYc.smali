.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$QuotaController$AlarmQueue$pN7hnbvVjNhYwyl3-UeOnOQFXYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/job/controllers/-$$Lambda$QuotaController$AlarmQueue$pN7hnbvVjNhYwyl3-UeOnOQFXYc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$AlarmQueue$pN7hnbvVjNhYwyl3-UeOnOQFXYc;

    invoke-direct {v0}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$AlarmQueue$pN7hnbvVjNhYwyl3-UeOnOQFXYc;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$AlarmQueue$pN7hnbvVjNhYwyl3-UeOnOQFXYc;->INSTANCE:Lcom/android/server/job/controllers/-$$Lambda$QuotaController$AlarmQueue$pN7hnbvVjNhYwyl3-UeOnOQFXYc;

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

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/QuotaController$AlarmQueue;->lambda$new$0(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
