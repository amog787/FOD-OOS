.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$txvDtxZFlT0LcCTHtzUh7e7hY2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$txvDtxZFlT0LcCTHtzUh7e7hY2w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$txvDtxZFlT0LcCTHtzUh7e7hY2w;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$txvDtxZFlT0LcCTHtzUh7e7hY2w;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$txvDtxZFlT0LcCTHtzUh7e7hY2w;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$UserHandler$txvDtxZFlT0LcCTHtzUh7e7hY2w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Lcom/android/server/media/MediaRoute2Provider;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$txvDtxZFlT0LcCTHtzUh7e7hY2w(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;JI)V

    return-void
.end method
