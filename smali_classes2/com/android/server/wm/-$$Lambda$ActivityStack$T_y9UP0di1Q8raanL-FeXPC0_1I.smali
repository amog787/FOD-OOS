.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$T_y9UP0di1Q8raanL-FeXPC0_1I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$T_y9UP0di1Q8raanL-FeXPC0_1I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$T_y9UP0di1Q8raanL-FeXPC0_1I;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$T_y9UP0di1Q8raanL-FeXPC0_1I;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$T_y9UP0di1Q8raanL-FeXPC0_1I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$T_y9UP0di1Q8raanL-FeXPC0_1I;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/ActivityStack;->lambda$getOccludingActivityAbove$8(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
