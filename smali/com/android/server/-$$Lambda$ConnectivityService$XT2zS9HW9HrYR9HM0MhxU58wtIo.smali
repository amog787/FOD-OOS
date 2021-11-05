.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$XT2zS9HW9HrYR9HM0MhxU58wtIo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$XT2zS9HW9HrYR9HM0MhxU58wtIo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$ConnectivityService$XT2zS9HW9HrYR9HM0MhxU58wtIo;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$ConnectivityService$XT2zS9HW9HrYR9HM0MhxU58wtIo;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$ConnectivityService$XT2zS9HW9HrYR9HM0MhxU58wtIo;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$XT2zS9HW9HrYR9HM0MhxU58wtIo;

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

    check-cast p1, Landroid/net/RouteInfo;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->lambda$updateRoutes$8(Landroid/net/RouteInfo;)Landroid/net/RouteInfo$RouteKey;

    move-result-object p1

    return-object p1
.end method
