.class public final synthetic Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/PinnerService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/PinnerService$3;->lambda$onUidActive$1(Ljava/lang/Object;I)V

    return-void
.end method
