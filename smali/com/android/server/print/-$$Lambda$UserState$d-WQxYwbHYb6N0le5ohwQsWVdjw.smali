.class public final synthetic Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;

    invoke-direct {v0}, Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;-><init>()V

    sput-object v0, Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;

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

    check-cast p1, Lcom/android/server/print/UserState;

    check-cast p2, Landroid/print/PrintJobId;

    check-cast p3, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    invoke-static {p1, p2, p3}, Lcom/android/server/print/UserState;->lambda$d-WQxYwbHYb6N0le5ohwQsWVdjw(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V

    return-void
.end method
