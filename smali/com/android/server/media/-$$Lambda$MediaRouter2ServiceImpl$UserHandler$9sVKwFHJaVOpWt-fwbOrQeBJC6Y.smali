.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$9sVKwFHJaVOpWt-fwbOrQeBJC6Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$9sVKwFHJaVOpWt-fwbOrQeBJC6Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$9sVKwFHJaVOpWt-fwbOrQeBJC6Y;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$9sVKwFHJaVOpWt-fwbOrQeBJC6Y;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$9sVKwFHJaVOpWt-fwbOrQeBJC6Y;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$9sVKwFHJaVOpWt-fwbOrQeBJC6Y;

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

    invoke-static {p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$9sVKwFHJaVOpWt-fwbOrQeBJC6Y(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method
