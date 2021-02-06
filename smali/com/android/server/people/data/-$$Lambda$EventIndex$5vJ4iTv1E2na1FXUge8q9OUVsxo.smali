.class public final synthetic Lcom/android/server/people/data/-$$Lambda$EventIndex$5vJ4iTv1E2na1FXUge8q9OUVsxo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventIndex$5vJ4iTv1E2na1FXUge8q9OUVsxo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$EventIndex$5vJ4iTv1E2na1FXUge8q9OUVsxo;

    invoke-direct {v0}, Lcom/android/server/people/data/-$$Lambda$EventIndex$5vJ4iTv1E2na1FXUge8q9OUVsxo;-><init>()V

    sput-object v0, Lcom/android/server/people/data/-$$Lambda$EventIndex$5vJ4iTv1E2na1FXUge8q9OUVsxo;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventIndex$5vJ4iTv1E2na1FXUge8q9OUVsxo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/people/data/EventIndex;->lambda$5vJ4iTv1E2na1FXUge8q9OUVsxo(J)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method
