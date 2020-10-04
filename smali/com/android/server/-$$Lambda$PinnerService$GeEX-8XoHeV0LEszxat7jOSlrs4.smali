.class public final synthetic Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;

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

    invoke-static {p1, p2}, Lcom/android/server/PinnerService;->lambda$GeEX-8XoHeV0LEszxat7jOSlrs4(Lcom/android/server/PinnerService;I)V

    return-void
.end method
