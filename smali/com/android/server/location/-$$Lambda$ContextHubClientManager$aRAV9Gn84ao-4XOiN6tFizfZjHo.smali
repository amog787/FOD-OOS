.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;

    invoke-direct {v0}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;-><init>()V

    sput-object v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;->INSTANCE:Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/location/ContextHubClientBroker;

    invoke-static {p1}, Lcom/android/server/location/ContextHubClientManager;->lambda$onHubReset$2(Lcom/android/server/location/ContextHubClientBroker;)V

    return-void
.end method
