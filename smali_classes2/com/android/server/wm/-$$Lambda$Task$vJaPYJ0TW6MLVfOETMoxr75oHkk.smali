.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1, p2}, Lcom/android/server/wm/Task;->lambda$vJaPYJ0TW6MLVfOETMoxr75oHkk(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
