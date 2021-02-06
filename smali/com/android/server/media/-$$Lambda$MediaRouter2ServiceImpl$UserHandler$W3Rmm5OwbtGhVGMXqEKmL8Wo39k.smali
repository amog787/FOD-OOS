.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$W3Rmm5OwbtGhVGMXqEKmL8Wo39k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$W3Rmm5OwbtGhVGMXqEKmL8Wo39k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$W3Rmm5OwbtGhVGMXqEKmL8Wo39k;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$W3Rmm5OwbtGhVGMXqEKmL8Wo39k;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$W3Rmm5OwbtGhVGMXqEKmL8Wo39k;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$W3Rmm5OwbtGhVGMXqEKmL8Wo39k;

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

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Lcom/android/server/media/MediaRoute2Provider;

    check-cast p3, Landroid/media/RoutingSessionInfo;

    invoke-static {p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$W3Rmm5OwbtGhVGMXqEKmL8Wo39k(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method
