.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$5lTLwVvq0pwuL9HyX5bbMG7YMlM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$5lTLwVvq0pwuL9HyX5bbMG7YMlM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$5lTLwVvq0pwuL9HyX5bbMG7YMlM;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$5lTLwVvq0pwuL9HyX5bbMG7YMlM;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$5lTLwVvq0pwuL9HyX5bbMG7YMlM;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$5lTLwVvq0pwuL9HyX5bbMG7YMlM;

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

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    check-cast p4, Ljava/lang/String;

    invoke-static {p1, v0, v1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$releaseSessionWithRouter2Locked$14(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method
