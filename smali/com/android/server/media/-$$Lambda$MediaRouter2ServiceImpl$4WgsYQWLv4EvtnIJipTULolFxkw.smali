.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$4WgsYQWLv4EvtnIJipTULolFxkw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$4WgsYQWLv4EvtnIJipTULolFxkw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$4WgsYQWLv4EvtnIJipTULolFxkw;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$4WgsYQWLv4EvtnIJipTULolFxkw;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$4WgsYQWLv4EvtnIJipTULolFxkw;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$4WgsYQWLv4EvtnIJipTULolFxkw;

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

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$unregisterRouter2Locked$3(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
