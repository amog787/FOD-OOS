.class public final synthetic Lcom/android/server/location/-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I;

    invoke-direct {v0}, Lcom/android/server/location/-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I;-><init>()V

    sput-object v0, Lcom/android/server/location/-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I;->INSTANCE:Lcom/android/server/location/-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I;

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

    check-cast p1, Lcom/android/server/location/AbstractLocationProvider;

    check-cast p2, Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {p1, p2}, Lcom/android/server/location/AbstractLocationProvider;->onSetRequest(Lcom/android/internal/location/ProviderRequest;)V

    return-void
.end method
