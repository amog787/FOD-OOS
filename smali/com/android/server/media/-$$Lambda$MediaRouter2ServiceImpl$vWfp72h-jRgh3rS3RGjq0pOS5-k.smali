.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$vWfp72h-jRgh3rS3RGjq0pOS5-k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$vWfp72h-jRgh3rS3RGjq0pOS5-k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$vWfp72h-jRgh3rS3RGjq0pOS5-k;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$vWfp72h-jRgh3rS3RGjq0pOS5-k;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$vWfp72h-jRgh3rS3RGjq0pOS5-k;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$vWfp72h-jRgh3rS3RGjq0pOS5-k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    check-cast p4, Ljava/lang/String;

    check-cast p5, Landroid/media/MediaRoute2Info;

    move-object p0, p1

    move-wide p1, v0

    invoke-static/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$transferToRouteWithRouter2Locked$12(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method
